using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassLibraryPassword1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryPassword.Tests
{
    [TestClass()]
    public class PasswordCheckerTests
    {
        [TestMethod()]
        public void Check_8Symbols_ReturnsTrue()
        {
            // Arrange.
            string password = "ASqw12$$";
            bool expected = true;

            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            // Assert.
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void Check_4Symbols_ReturnsFalse()
        {
            // Arrange.
            string password = "Aq1$";

            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            Assert.IsFalse(actual);
        }
        [TestMethod()]
        public void Check_PasswordWithLowerSymbols_ReturnsTrue()
        {
            // Arrange.
            string password = "ASDq123$";
            bool expected = true;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_PasswordwithoutLowerSymbols_ReturnsFalse()
        {
            // Arrange.
            string password = "ASDQWE123S";
            bool expected = false;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_Correctpasswords_ReturnsTrue()
        {
            // Arrange.
            string password = "ASDqwe123$";
            bool expected = true;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_moreCharacters_ReturnsFalse()
        {
            // Arrange.
            string password = "ASDqwe123$ASDqwe123$ASDqwe123$";
            bool expected = false;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_withNumbers_ReturnsTrue()
        {
            // Arrange.
            string password = "ASDqwe1$";
            bool expected = true;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_withoutNumbers_ReturnsFalse()
        {
            // Arrange.
            string password = "ASDqweASD$";
            bool expected = false;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_withSpecialCharacters_ReturnsTrue()
        {
            // Arrange.
            string password = "Aqwe123$";
            bool expected = true;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_withoutSpecialCharacters_ReturnsFalse()
        {
            // Arrange.
            string password = "ASDqwe123";
            bool expected = false;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_withUppercase_ReturnsTrue()
        {
            // Arrange.
            string password = "Aqwe123$";
            bool expected = true;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
        [TestMethod()]
        public void Check_withoutUppercase_ReturnsFalse()
        {
            // Arrange.
            string password = "asdqwe123$";
            bool expected = false;
            // Act.
            bool actual = PasswordChecker.ValidatePassword(password);
            // Assert.
            Assert.AreEqual(expected, actual);
        }
    }
}