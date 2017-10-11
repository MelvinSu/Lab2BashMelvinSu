#!/bin/sh

touch MyClass.h
echo "
#ifndef $1_hh
#define $1_hh

class $1
{
	public:
	$1();
	~$1();

	private:
};
#endif" > MyClass.h
touch MyClass.cc
echo "#include ""\"./$1.hh"\""

$1::$1()
{}

$1::~$1()
{}" > MyClass.cc
