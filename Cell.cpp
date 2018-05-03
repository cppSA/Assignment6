/**
*cpp file of class Cell
*Authors Alexey Titov and Shir Bentabou
*Version 1.0
**/
//library
#include "Board.h"
//Empty constructor.
Cell::Cell(){}

//Function that sets value in Cell object.
bool Cell::setValue(const char& c){
    this->value=c;
}

//Function that gets value from Cell object.
const char Cell::getValue(){
    return this->value;
}

//Operator '=' overloading for Cell class. If the char given is not 'X' or 'O' - an exception is thrown.
Cell& Cell::operator=(char c){
    if (c=='X' || c=='O'){
        this->value=c;
        return *this;
    }
    else{
        IllegalCharException ce;
        ce.setCh(c);
        throw ce;
    }
}

    
// //Overloading operator '=' for Cell class. Returns the char in a certain cell.
// char char::operator=(Cell& c){
//     return c.getValue();
// }

//Operator '<<' overloading for Cell class.
ostream& operator<< (ostream& os, Cell& c){
    os << c.getValue();
    return os;
}
