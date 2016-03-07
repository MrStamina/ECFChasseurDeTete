﻿namespace ClassChasseurDT.Exceptions
{
    public class DaoExceptionAfficheMessage : DaoException
    {
        public DaoExceptionAfficheMessage() : base()
        {
        }

        public DaoExceptionAfficheMessage(string message)
            : base(message)
        {
        }
        public DaoExceptionAfficheMessage(string message, System.Exception inner)
            : base(message, inner)
        {
        }
    }
}