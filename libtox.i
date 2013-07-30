%module tox
%{
        /* Includes the header in the wrapper code */
        #include "ProjectTox-Core/core/Messenger.h"
%}

/* Parse the header file to generate wrappers */
%include "ProjectTox-Core/core/Messenger.h"
