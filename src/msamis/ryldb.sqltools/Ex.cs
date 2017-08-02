﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ryldb.sqltools {
    public class Ex {


        public class LoginException : System.Exception {
            public LoginException() : base() {

            }
            public LoginException(String message) : base(message) {

            }

            public LoginException(String message, Exception innerException) : base(message, innerException) {

            }
            protected LoginException(SerializationInfo info, StreamingContext context) : base(info, context) {

            }

        }


    }
}
