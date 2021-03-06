#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/glu.h>
#include <GLUT/glut.h>
#else
#ifdef _WIN32
#include <windows.h>
#endif
#include <GL/glew.h>
#include <GL/glu.h>
#include <GL/freeglut.h>
#endif

#include "shader_utils.h"
#include "gl_utils.h"

#define GLM_FORCE_RADIANS
#include <glm/gtc/type_ptr.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include "glm/ext.hpp"

void mouseButtonCallback(GLint button, GLint state, GLint x, GLint y);
void cursorPosCallback(GLint xpos, GLint ypos);
void updateCameraVectors(GLfloat xnew, GLfloat ynew);
void mouseWheel(int, int, int, int);
void updateCameraVectors(GLfloat xnew, GLfloat ynew);
void updateCameraVectors();

//Globals
GLuint program;
GLint vVertex_attrib, vColor_attrib, vNormal_attrib;
//Uniform variabled for Model, View, and Projection matrices to be passed to the vertex shader.
GLint vModel_uniform, vView_uniform, vProjection_uniform;
int screen_width = 800, screen_height = 600;

bool firstMousePress = true;
GLboolean leftMousePress = GL_FALSE;
GLfloat xprev, yprev;
GLfloat yaw = 90.0f, pitch = 0.0f;
GLfloat sensitivity = 0.5;
GLfloat radius = 100.0f;

glm::vec3 eye(0.0f, 0.0f, 100.0f);
glm::vec3 center(0.0f, 0.0f, 0.0f);
glm::vec3 worldUp(0.0f, 1.0f, 0.0f);
glm::vec3 up = worldUp;

void mouseButtonCallback(GLint button, GLint state, GLint x, GLint y) {

		if (firstMousePress) {
			xprev = x;
			yprev = y;
			firstMousePress = false;
		}
	    if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN) {
	    	leftMousePress = GL_TRUE;
	    	//updateCameraVectors(x, y);
	    	xprev = x;
			yprev = y;
	    } else if (button == GLUT_LEFT_BUTTON && state == GLUT_UP) {
	    	leftMousePress = GL_FALSE;
	    	updateCameraVectors(x, y);
	    }


}

void cursorPosCallback(GLint x, GLint y) {
	if (leftMousePress == GL_TRUE) {
		updateCameraVectors(x, y);
	}
}

void updateCameraVectors(GLfloat xnew, GLfloat ynew) {
	GLfloat xoffset = xnew - xprev;
	GLfloat yoffset = yprev - ynew;

	xprev = xnew;
	yprev = ynew;

	xoffset *= sensitivity;
	yoffset *= sensitivity;

	yaw -= xoffset;
	pitch += yoffset;

	if (pitch >= 89.0f) pitch = 89.0f;
	else if (pitch <= -89.0f) pitch = -89.0f;

	GLfloat yaw_radians = glm::radians(yaw);
	GLfloat pitch_radians = glm::radians(pitch);

	GLfloat cos_yaw = glm::cos(yaw_radians);
	GLfloat sin_yaw = glm::sin(yaw_radians);

	GLfloat cos_pitch = glm::cos(pitch_radians);
	GLfloat sin_pitch = glm::sin(pitch_radians);

	GLfloat x = radius * cos_pitch * cos_yaw;
	GLfloat y = radius * sin_pitch;
	GLfloat z = radius * cos_pitch * sin_yaw;

	eye.x = x;
	eye.y = y;
	eye.z = z;

	glm::vec3 right = glm::normalize(glm::cross(eye, worldUp));
	up = glm::normalize(glm::cross(right, eye));

	GLint viewPosLoc = glGetUniformLocation(program, "viewPos");
	glUniform3f(viewPosLoc, eye.x, eye.y, eye.z);

	glutPostRedisplay();
}

void updateCameraVectors() {
	//std::cout << "updateCameraVectors() called" << std::endl; 

	GLfloat yaw_radians = glm::radians(yaw);
	GLfloat pitch_radians = glm::radians(pitch);

	GLfloat cos_yaw = glm::cos(yaw_radians);
	GLfloat sin_yaw = glm::sin(yaw_radians);

	GLfloat cos_pitch = glm::cos(pitch_radians);
	GLfloat sin_pitch = glm::sin(pitch_radians);

	std::cout << "updateCameraVectors() radius: " << radius << std::endl;

	GLfloat x = radius * cos_pitch * cos_yaw;
	GLfloat y = radius * sin_pitch;
	GLfloat z = radius * cos_pitch * sin_yaw;

	eye.x = x;
	eye.y = y;
	eye.z = z;

	glm::vec3 right = glm::normalize(glm::cross(eye, worldUp));
	up = glm::normalize(glm::cross(right, eye));

	GLint viewPosLoc = glGetUniformLocation(program, "viewPos");
	glUniform3f(viewPosLoc, eye.x, eye.y, eye.z);

	glutPostRedisplay();
}


GLuint cube_VAO; //Vertex array object for cube
GLuint torus_VAO; //Vertex array object for torus

glm::mat4 myLookAt(const glm::vec3 eye, const glm::vec3 center, const glm::vec3 up)
{
	glm::vec3 g = center - eye;
	glm::vec3 w = -1.0f * glm::normalize(g);

	glm::vec3 v = glm::normalize(glm::cross(up, w));

	glm::vec3 u = glm::normalize(glm::cross(w, v));

	GLfloat eyeData[] = {
		1.0f, 0.0f, 0.0f, 0.0f,
		0.0f, 1.0f, 0.0f, 0.0f,
		0.0f, 0.0f, 1.0f, 0.0f,
		-eye.x, -eye.y, -eye.z, 1.0f
	};

	GLfloat axesData[] = {
		v.x, u.x, w.x, 0.0f,
		v.y, u.y, w.y, 0.0f,
		v.z, u.z, w.z, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f
	};

	glm::mat4 eyeTranslation = glm::make_mat4(eyeData);

	glm::mat4 basisTransformation = glm::make_mat4(axesData);

	glm::mat4 cam = basisTransformation * eyeTranslation;

	return cam;
}

glm::mat4 model;

void setupModelTransformation()
{
	//TODO:
	//Modelling transformations (Model -> World coordinates)
	model = glm::mat4(1.0); //Identity matrix -- do nothing

	//Pass on the modelling matrix to the vertex shader
	glUseProgram(program);
	vModel_uniform = glGetUniformLocation(program, "vModel");
	if(vModel_uniform == -1){
		fprintf(stderr, "Could not bind location: vModel\n");
		exit(0);
	}
	glUniformMatrix4fv(vModel_uniform, 1, GL_FALSE, glm::value_ptr(model)); 
}

void setupViewTransformation()
{
	//std::cout << "setupViewTransformation() called" << std::endl;
	//std::cout << "setupViewTransformation() radius: " << radius << std::endl;


	//TODO:
	//Viewing transformations (World -> Camera coordinates
	glm::mat4 view = glm::lookAt(glm::vec3(0.0f, 0.0f, 100.0f), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(0.0f, 1.0f, 0.0f));

	//trackball viewing
	view = myLookAt(eye, center, up);

	//Pass on the viewing matrix to the vertex shader
	glUseProgram(program);
	vView_uniform = glGetUniformLocation(program, "vView");
	if(vView_uniform == -1){
		fprintf(stderr, "Could not bind location: vView\n");
		exit(0);
	}
	glUniformMatrix4fv(vView_uniform, 1, GL_FALSE, glm::value_ptr(view)); 
}

void setupProjectionTransformation()
{
	//TODO:
	//Projection transformation (Orthographic projection)
	float aspect = (float)screen_width/(float)screen_height;
	float view_height = 100.0f;
	glm::mat4 projection = glm::ortho(-view_height*aspect/2.0f, view_height*aspect/2.0f, -view_height/2.0f, view_height/2.0f, 0.1f, 1000.0f);

	//perpective projection
	projection = glm::perspective(glm::radians(45.0f), aspect, 0.10f, 1000.0f);
	//projection = glm::perspective(45.0f, aspect, 0.10f, 1000.0f);
	
	//Pass on the projection matrix to the vertex shader
	glUseProgram(program);
	vProjection_uniform = glGetUniformLocation(program, "vProjection");
	if(vProjection_uniform == -1){
		fprintf(stderr, "Could not bind location: vProjection\n");
		exit(0);
	}
	glUniformMatrix4fv(vProjection_uniform, 1, GL_FALSE, glm::value_ptr(projection)); 
}

glm::vec3 lightPos(100.0f, -100.0f, 100.0f);
glm::vec3 lightColor(1.0f, 1.0f, 1.0f);

glm::vec3 lightPos2(100.0f, -100.0f, -100.0f);
glm::vec3 lightColor2(0.5f, 0.0f, 0.5f);

void init_lighting() {
	glUseProgram(program);

	glm::vec4 pos = model * glm::vec4(lightPos, 1.0f);

	GLint lightPosLoc = glGetUniformLocation(program, "lightPos");
	glUniform3f(lightPosLoc, lightPos.x, lightPos.y, lightPos.z);

	GLint lightColorLoc = glGetUniformLocation(program, "lightColor");
	glUniform3f(lightColorLoc, lightColor.x, lightColor.y, lightColor.z);

	GLint viewPosLoc = glGetUniformLocation(program, "viewPos");
	glUniform3f(viewPosLoc, eye.x, eye.y, eye.z);


	GLint lightPos2Loc = glGetUniformLocation(program, "lightPos2");
	glUniform3f(lightPos2Loc, lightPos2.x, lightPos2.y, lightPos2.z);

	GLint lightColor2Loc = glGetUniformLocation(program, "lightColor2");
	glUniform3f(lightColor2Loc, lightColor2.x, lightColor2.y, lightColor2.z);
}

struct SphereQuad {
	glm::vec3 pos1, pos2, pos3, pos4, normal;
	SphereQuad(glm::vec3 pos1, glm::vec3 pos2, glm::vec3 pos3, glm::vec3 pos4, glm::vec3 normal) : pos1(pos1), pos2(pos2), pos3(pos3), pos4(pos4), normal(normal) {}
};

GLfloat radius_sphere = 20.0f;
GLfloat increment = 1.0f;
std::vector<SphereQuad> sphereData;

glm::vec3 generateSpherePos(GLfloat theta, GLfloat phi) {
	GLfloat theta_radians = glm::radians(theta);
	GLfloat phi_radians = glm::radians(phi);

	GLfloat sin_theta = glm::sin(theta_radians);
	GLfloat cos_theta = glm::cos(theta_radians);

	GLfloat sin_phi = glm::sin(phi_radians);
	GLfloat cos_phi = glm::cos(phi_radians);

	GLfloat x = radius_sphere * cos_theta * sin_phi;
	GLfloat y = radius_sphere * sin_theta * sin_phi;
	GLfloat z = radius_sphere * cos_phi;

	glm::vec3 pos(x, y, z);

	return pos;
}

void generateSphereData(GLfloat theta, GLfloat phi) {
	glm::vec3 pos1 = generateSpherePos(theta, phi);
	glm::vec3 pos2 = generateSpherePos(theta + increment, phi);
	glm::vec3 pos3 = generateSpherePos(theta + increment, phi + increment);
	glm::vec3 pos4 = generateSpherePos(theta, phi + increment);

	glm::vec3 a = pos2 - pos1;
	glm::vec3 b = pos4 - pos1;

	glm::vec3 normal = glm::normalize(glm::cross(b, a));

	SphereQuad quad(pos1, pos2, pos3, pos4, normal);

	sphereData.push_back(quad);
}

void init_spehre_data() {
	GLfloat theta = 0.0;
	GLfloat phi = 0.0;

	for (theta = 0.0; theta <= 360.0f; theta += increment) {
		for (phi = 0.0; phi <= 180.0f; phi += increment) {
			generateSphereData(theta, phi);
		}
	}
}



void createCubeObject()
{
	glUseProgram(program);

	setupViewTransformation();

	//Bind shader variables
	vVertex_attrib = glGetAttribLocation(program, "vVertex");
	if(vVertex_attrib == -1) {
		fprintf(stderr, "Could not bind location: vVertex\n");
		exit(0);
	}
	vColor_attrib = glGetAttribLocation(program, "vColor");
	if(vColor_attrib == -1) {
		fprintf(stderr, "Could not bind location: vColor\n");
		exit(0);
	}

	//Cube data: [-10, 10]^3
	GLfloat cube_vertices[] = {10, 10, 10, -10, 10, 10, -10, -10, 10, 10, -10, 10, //Front
				   10, 10, -10, -10, 10, -10, -10, -10, -10, 10, -10, -10}; //Back
	GLushort cube_indices[] = {0, 2, 3, 0, 1, 2, //Front
				4, 7, 6, 4, 6, 5, //Back
				5, 2, 1, 5, 6, 2, //Left
				4, 3, 7, 4, 0, 3, //Right
				1, 0, 4, 1, 4, 5, //Top
				2, 7, 3, 2, 6, 7}; //Bottom
	GLfloat cube_colors[] = {1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1}; //Unique face colors

	//Generate VAO object
	glGenVertexArrays(1, &cube_VAO);
	glBindVertexArray(cube_VAO);

	//Create VBOs for the VAO
	//Position information (data + format)
	int nVertices = 6*2*3; //(6 faces) * (2 triangles each) * (3 vertices each)
	GLfloat *expanded_vertices = new GLfloat[nVertices*3];
	for(int i=0; i<nVertices; i++) {
		expanded_vertices[i*3] = cube_vertices[cube_indices[i]*3];
		expanded_vertices[i*3 + 1] = cube_vertices[cube_indices[i]*3+1];
		expanded_vertices[i*3 + 2] = cube_vertices[cube_indices[i]*3+2];
	}
	GLuint vertex_VBO;
	glGenBuffers(1, &vertex_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, vertex_VBO);
	glBufferData(GL_ARRAY_BUFFER, nVertices*3*sizeof(GLfloat), expanded_vertices, GL_STATIC_DRAW);
	glEnableVertexAttribArray(vVertex_attrib);
	glVertexAttribPointer(vVertex_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
	delete []expanded_vertices;

	//Color - one for each face
	GLfloat *expanded_colors = new GLfloat[nVertices*3];
	for(int i=0; i<nVertices; i++) {
		int color_index = i / 6;
		expanded_colors[i*3] = cube_colors[color_index*3];
		expanded_colors[i*3+1] = cube_colors[color_index*3+1];
		expanded_colors[i*3+2] = cube_colors[color_index*3+2];
	}
	GLuint color_VBO;
	glGenBuffers(1, &color_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, color_VBO);
	glBufferData(GL_ARRAY_BUFFER, nVertices*3*sizeof(GLfloat), expanded_colors, GL_STATIC_DRAW);
	glEnableVertexAttribArray(vColor_attrib);
	glVertexAttribPointer(vColor_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
	delete []expanded_colors;

	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0); //Unbind the VAO to disable changes outside this function.

	glUseProgram(program);
    glBindVertexArray(cube_VAO);
    glDrawArrays(GL_TRIANGLES, 0, 6*2*3);
    glBindVertexArray(0);


    glutSwapBuffers();
}

int init_resources(void)
{
	//Enable certain OpenGL states
	glEnable(GL_DEPTH_TEST); //Enable Z-buffer
	glEnable(GL_MULTISAMPLE); //Draw smoothed polygons

	//Create program
	//program = createProgram("vshader.vs", "fshader.fs");
	program = createProgram("vshader_p.vs", "fshader_p.fs");

	//Setup Transformations
	setupModelTransformation();
	setupViewTransformation();
	setupProjectionTransformation();

	//init lighting resources
	init_lighting();

	//init sphere data
	init_spehre_data();
	return 1;
}

void drawSphereElement(SphereQuad quad) {
	glUseProgram(program);

	//Bind shader variables
	vVertex_attrib = glGetAttribLocation(program, "vVertex");
	if(vVertex_attrib == -1) {
		fprintf(stderr, "Could not bind location: vVertex\n");
		exit(0);
	}
	vColor_attrib = glGetAttribLocation(program, "vColor");
	if(vColor_attrib == -1) {
		fprintf(stderr, "Could not bind location: vColor\n");
		exit(0);
	}
	vNormal_attrib = glGetAttribLocation(program, "vNormal");
	if(vNormal_attrib == -1) {
		fprintf(stderr, "Could not bind location: vNormal\n");
		exit(0);
	}

	glm::vec3 pos1 = quad.pos1;
	glm::vec3 pos2 = quad.pos2;
	glm::vec3 pos3 = quad.pos3;
	glm::vec3 pos4 = quad.pos4;
	glm::vec3 normal = quad.normal;


	GLfloat torus_vertices[18];
	GLfloat torus_colors[18];
	GLfloat torus_normals[18];

	torus_vertices[0] = pos1.x;
	torus_vertices[1] = pos1.y;
	torus_vertices[2] = pos1.z;

	torus_vertices[3] = pos2.x;
	torus_vertices[4] = pos2.y;
	torus_vertices[5] = pos2.z;

	torus_vertices[6] = pos3.x;
	torus_vertices[7] = pos3.y;
	torus_vertices[8] = pos3.z;

	torus_vertices[9] = pos1.x;
	torus_vertices[10] = pos1.y;
	torus_vertices[11] = pos1.z;

	torus_vertices[12] = pos4.x;
	torus_vertices[13] = pos4.y;
	torus_vertices[14] = pos4.z;

	torus_vertices[15] = pos3.x;
	torus_vertices[16] = pos3.y;
	torus_vertices[17] = pos3.z;



	for (int i = 0; i < 6; i++) {
		torus_colors[3*i] = 0.35f;
		torus_colors[3*i + 1] = 0.5f;
		torus_colors[3*i + 2] = 0.35f;

		torus_normals[3*i] = normal.x;
		torus_normals[3*i + 1] = normal.y;
		torus_normals[3*i + 2] = normal.z;
	}

	GLuint torus_VAO;

	glGenVertexArrays(1, &torus_VAO);

	glBindVertexArray(torus_VAO);

	GLuint vertex_VBO;
	glGenBuffers(1, &vertex_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, vertex_VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(torus_vertices), torus_vertices, GL_STATIC_DRAW);
	glEnableVertexAttribArray(vVertex_attrib);
	glVertexAttribPointer(vVertex_attrib, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), 0);

	GLuint color_VBO;
	glGenBuffers(1, &color_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, color_VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(torus_colors), torus_colors, GL_STATIC_DRAW);
	glEnableVertexAttribArray(vColor_attrib);
	glVertexAttribPointer(vColor_attrib, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), 0);

	GLuint normal_VBO;
	glGenBuffers(1, &normal_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, normal_VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(torus_normals), torus_normals, GL_STATIC_DRAW);
	glEnableVertexAttribArray(vNormal_attrib);
	glVertexAttribPointer(vNormal_attrib, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), 0);

	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);


	glUseProgram(program);
    glBindVertexArray(torus_VAO);
    //glDrawArrays(GL_LINE_LOOP, 0, 12);
    glDrawArrays(GL_TRIANGLES, 0, 18);
    //glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
    glBindVertexArray(0);

    glDeleteBuffers(1, &vertex_VBO);
    glDeleteBuffers(1, &color_VBO);
    glDeleteBuffers(1, &normal_VBO);
    //glDeleteBuffers(1, &index_EBO);
    glDeleteVertexArrays(1, &torus_VAO);

    //std::cout << "drawSphereElement(SphereQuad quad) called" << std::endl;
}

void drawSphere() {

	setupViewTransformation();

	for (int i = 0; i < sphereData.size(); i++)
		drawSphereElement(sphereData[i]);
}


void onDisplay()
{
    /* Clear the background as white */
    glClearColor(1.0, 1.0, 1.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    //printOpenGLError();
    //createCubeObject();
    //createTorusObject();

    drawSphere();
    
    /* Display the result */

    glutSwapBuffers();
    //glutPostRedisplay();
}

void free_resources()
{
    glDeleteProgram(program);
}

void onReshape(int width, int height) {
	screen_width = width;
	screen_height = height;
	glViewport(0, 0, screen_width, screen_height);
	setupProjectionTransformation();// Redo projection matrix
}

void onKey(unsigned char key, int x, int y)
{
	std::cout << "key: " << (int)key << std::endl;
	switch(key)
	{
		case 27: exit(0);
		break;
		case 43:
			std::cout << "zoom in" << std::endl;
			radius -= 1.0f;
			std::cout << "radius: " << radius << std::endl;
			if (radius < 30) radius = 30.0f;
			updateCameraVectors();
			break;
		case 95:
			std::cout << "zoom out" << std::endl;
			radius += 1.0f;
			std::cout << "radius: " << radius << std::endl;
			if (radius > 200) radius = 200.0f;
			updateCameraVectors();
			break; 
	}
}

int main(int argc, char* argv[])
{
    /* Glut-related initialising functions */
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH | GLUT_MULTISAMPLE);
    glutInitWindowSize(screen_width, screen_height);
    glutCreateWindow("Assignment 2: Transformations");
#ifndef __APPLE__
    GLenum glew_status = glewInit();
    if(glew_status != GLEW_OK)
    {
	fprintf(stderr, "Error: %s\n", glewGetErrorString(glew_status));
	return EXIT_FAILURE;
    }
#endif
    
    
    /* When all init functions run without errors,
     the program can initialise the resources */
    if (1 == init_resources())
    {
        /* We can display it if everything goes OK */
		glutReshapeFunc(onReshape);
        glutDisplayFunc(onDisplay);
		glutKeyboardFunc(onKey);
		glutMouseFunc(mouseButtonCallback);
    	glutMotionFunc(cursorPosCallback);
    	//glutMouseWheelFunc(mouseWheel);
        glutMainLoop();
    }
    
    /* If the program exits in the usual way,
     free resources and exit with a success */
    free_resources();
    return EXIT_SUCCESS;
}

void mouseWheel(int button, int dir, int x, int y)
{
    if (dir > 0)
    {
        radius += 1 * sensitivity;
    }
    else
    {
        radius -= 1 * sensitivity;
    }

    if (radius < 30) radius = 30;
    else if (radius > 200) radius = 200;

    return;
}
