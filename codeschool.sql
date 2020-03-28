-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 04:28 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `chapter_id` int(32) NOT NULL,
  `course_id` int(32) NOT NULL,
  `chapter_title` varchar(128) NOT NULL,
  `sub_chapter_title` varchar(128) NOT NULL,
  `external_resourse` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`chapter_id`, `course_id`, `chapter_title`, `sub_chapter_title`, `external_resourse`) VALUES
(1, 2, 'HTML Fundamentals', '', ''),
(7, 2, 'HTML Content', '', ''),
(8, 2, 'CSS Fundamentals', '', ''),
(9, 2, 'Styling with CSS', '', ''),
(10, 2, 'Organizing HTML & CSS', '', ''),
(11, 2, 'The CSS Box Model', '', ''),
(12, 2, 'CSS Positioning', '', ''),
(13, 2, 'Images', '', ''),
(14, 2, 'HTML Tables', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(32) NOT NULL,
  `coursename` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `coursename`, `description`) VALUES
(1, 'Java', 'Introduction to Java'),
(2, 'Html', 'Introduction to Html & Css');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(32) NOT NULL,
  `course_id` int(32) NOT NULL,
  `lessonName` varchar(128) NOT NULL,
  `lesson` text NOT NULL,
  `practice` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'index.html',
  `code` text NOT NULL,
  `answersheet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `lessonName`, `lesson`, `practice`, `title`, `code`, `answersheet`) VALUES
(1, 1, 'John', '<p>Java is a programming language designed to build secure, powerful applications that run across multiple operating systems, including Linux, Mac OS X, and Windows. The Java language is known to be flexible, scalable, and maintainable.</p>\n<p>We will begin with the fundamentals of Java programming: data types, arithmetic, and operators. We’ll learn a few concepts that you can apply to the programs you create. By the end of the course, you’ll be familiar with the basic building blocks of a Java program.</p>', '<p>Let''s get started by getting to know each other.</p>\n                            <p>On line 4, type your name within double quotes between the parentheses like this:</p>\n                            <p>System.out.println("Gilberto");</p>\n                            <p>Click Run to run the code.</p>', 'Name', 'public class Name {\n    public static void main(String[] args) {\n\n        System.out.println("John");\n    }\n}', 'public class Name {\n    public static void main(String[] args) {\n\n        System.out.println("John");\n    }\n}            '),
(2, 1, '', '<p>Great job! You''ve already learned how to print text. </p>\n<p>Creating more useful Java programs will likely require you to work with several additional types of data. Let''s explore a few of them.</p>\n<p>The first <em>data type</em> we will use is <code>int</code>.</p>\n<ol>\n<li><code>int</code> is short for integer, which are all positive and negative numbers, including zero. This number could represent the number of visits a website has received or the number of programming languages you know.</li>\n<li>The <code>int</code> data type only allows values between -2,147,483,648 and 2,147,483,647.</li>\n</ol>', '<p>Type any whole number in between the parentheses of <code>System.out.println();</code></p>\n<p><code>int</code> data types do not need to be typed within quotes, so you can avoid using quotes this time.</p>', 'DataTypes', 'public class DataTypes {\n	public static void main(String[] args) {\n\n		System.out.println();\n\n	}\n}', 'parseInt(2, 10)'),
(3, 1, '', '<p>Fantastic! You just printed an <code>int</code> data type. </p>\n<p>The next data type we will use is the <code>boolean</code>. </p>\n<ol>\n<li>A <code>boolean</code> is a data type that can only be either <code>true</code> or <code>false</code>.</li>\n</ol>', '<p>Type either <code>true</code> or <code>false</code> between the parentheses of <code>System.out.println();</code> to print a boolean value.</p>', 'DataTypesB', 'public class DataTypesB {\r\n	public static void main(String[] args) {\r\n\r\n		System.out.println();\r\n\r\n	}\r\n}', 'project'),
(4, 1, '', '<p>Perfect. Let''s look at one more Java data type: <code>char</code>.</p>\r\n<p>The <code>char</code> data type is used to represent single characters. That includes the keys on a keyboard that are used to produce text.</p>\r\n<ol>\r\n<li><p><code>char</code> is short for character and can represent a single character.</p>\r\n</li>\r\n<li><p>All <code>char</code> values must be enclosed in single quotes, like this: <code>''G''</code>.</p>', '<p>In between the parentheses of <code>System.out.println();</code> type any single character of your choice. Make sure it''s enclosed in single quotes!</p>          ', 'DataTypesC', 'public class DataTypesC {\r\n	public static void main(String[] args) {\r\n\r\n		System.out.println();\r\n\r\n	}\r\n}', 'good'),
(5, 1, '', '<p>The <em>int</em>, <em>boolean</em>, and <em>char</em> are fundamental data types of Java that we will see again later in the course. </p>\r\n<p>Another important feature of Java (and of many programming languages) is the ability to store values using <em>variables</em>. </p>\r\n<ol>\r\n<li><p>A <em>variable</em> stores a value.</p>\r\n</li>\r\n<li><p>In Java, all variables must have a specified data type.</p>\r\n</li>\r\n</ol>\r\n<p>We can assign a variable to a specified data type, like this:</p><code>int myLuckyNumber = 7;</code>int myLuckyNumber = 7;<p>A semicolon <code>;</code> is also used to end all Java single code statements. We will cover statements that should not end in a semicolon later in this course.</p>', '<p>Set the <code>int</code> variable <code>myNumber</code> equal to the value <code>42</code>.</p><p>Set the <code>boolean</code> variable <code>isFun</code> equal to <code>true</code>.</p><p>Set the <code>char</code> variable <code>movieRating</code> equal to <code>''A''</code>.</p>', 'Variables', 'public class Variables {\r\n	public static void main(String[] args) {\r\n\r\n		int myNumber;\r\n		boolean isFun; \r\n		char movieRating; \r\n\r\n	}\r\n}', 'variable'),
(6, 1, '', '<p>Before we explore what we can do with variables, let’s learn how to keep code organized in Java. </p>\r\n<p><em>Whitespace</em> is one or more characters (such as a <em>space</em>, <em>tab</em>, <em>enter</em>, or <em>return</em>) that do not produce a visible mark or text. Whitespace is often used to make code visually presentable. </p>\r\n<p>Java will ignore whitespace in code, but it is important to know how to use whitespace to structure code well. If you use whitespace correctly, code will be easier for you and other programmers to read and understand.</p>', '<p>The given code is poorly formatted. Place <code>System.out.println(isFormatted);</code> on line 5 so that it is easier to read.</p>', 'WhiteSpace', 'public class WhiteSpace {\r\n	public static void main(String[] args) {\r\n\r\n		boolean isFormatted = false;System.out.println(isFormatted);\r\n\r\n	}\r\n}', 'whitespace\r\n'),
(8, 1, '', '<p>A <em>comment</em> is text you want Java to ignore. Comments allow you to describe code or keep notes. </p>\r\n<p>By using comments in the Java code, you may help yourself and even other programmers understand the purpose of code that a comment refers to. </p>\r\n<p>In Java, there are two styles of comments: <em>single line comments</em> and <em>multi-line comments</em>.</p>\r\n<ol>\r\n<li><em>Single line comments</em> are one line comments that begin with two forward slashes:</li>\r\n</ol>\r\n<code>// I''m a single line comment!</code>\r\n<ol>\r\n<li><em>Multi-line comments</em> are generally longer comments that can span multiple lines. They begin with <code>/*</code> and end with <code>*/</code> . Here''s an example:</li>\r\n</ol>\r\n<code>/*Hello,Java!*/</code>', '<p>The statement on line 4 prints out <code>Noise!</code>. Ask Java to ignore it by commenting it out. Place two forward slashes (<code>//</code>) at the beginning of line 4.</p><p>Write a multi-line comment that begins anywhere after the single line comment you just wrote. Again, the comment can say anything you like.</p>', 'Comments', 'public class Comments {\r\n	public static void main(String[] args) {\r\n\r\n		System.out.println("Noise!");\r\n		\r\n\r\n\r\n\r\n\r\n		\r\n	}\r\n}', 'comment\r\n'),
(9, 1, '', '<p>Now let''s try arithmetic in Java. You can add, subtract, multiply, and divide numbers and store them in variables like this:</p><code>int sum = 34 + 113;\r\nint difference = 91 - 205;\r\nint product = 2 * 8; \r\nint quotient = 45 / 3;</code>', '<p>Set the <code>int</code> variable <code>myNumber</code> equal to the product of two numbers.</p>', 'Arithmetic', 'public class Arithmetic {\r\n	public static void main(String[] args) {\r\n\r\n		int myNumber = \r\n		System.out.println(myNumber);\r\n\r\n	}\r\n}', 'hi'),
(10, 1, '', '<p>Good work! Let''s explore one more special math operator known as <em>modulo</em>.</p>\r\n<ol>\r\n<li>The <em>modulo</em> operator - represented in Java by the <code>%</code> symbol - returns the remainder of dividing two numbers.</li>\r\n</ol>\r\n<p>For example, <code>15 % 6</code> will return the value of <code>3</code>, because that is the remainder left over after dividing 15 by 6.</p>', '<p>Use the modulo operator to set the variable <code>myRemainder</code> equal to <code>2</code>. You can use any two numbers that return a remainder value of <code>2</code>.</p>', 'Modulo', 'public class Modulo {\r\n	public static void main(String[] args) {\r\n\r\n		int myRemainder = \r\n		System.out.println(myRemainder);\r\n\r\n	}\r\n} ', 'modulo'),
(11, 1, '', '<p>It looks like you''re getting the hang of this! Let''s explore another set of useful operators available in Java known as <em>relational operators</em>.</p>\r\n<p>Relational operators compare data types that have a defined ordering, like numbers (since numbers are either smaller or larger than other numbers). </p>\r\n<p>Relational operators will always return a boolean value of <code>true</code> or <code>false</code>.</p>\r\n<p>Here are a few relational operators:</p>\r\n<ol>\r\n<li><code>&lt;</code> : less than.</li>\r\n<li><code>&lt;=</code>: less than or equal to.</li>\r\n<li><code>&gt;</code>: greater than.</li>\r\n<li><code>&gt;=</code>: greater than or equal to.</li>\r\n</ol>\r\n<p>A relational operator is placed between the two <em>operands</em> (the terms that you want to compare using the relational operator). The result of a relational operation is printed out in the following statement:</p>\r\n<code>System.out.println(5 < 7);\r\n</code>\r\n<p>The example above will print out <code>true</code> because the statement "<code>5</code> is less than <code>7</code>" is true.</p>', '<p>Use one of the relational operators above to compare any two integers.</p>', 'RelationalOperators', 'public class RelationalOperators {\r\n	public static void main(String[] args) {\r\n\r\n		System.out.println();\r\n\r\n	}\r\n}', 'good'),
(12, 1, '', '<p>You may have noticed that the relational operators did not include an operator for testing "equals to". In Java, <em>equality operators</em> are used to test equality.</p>\r\n<p>The equality operators are:</p>\r\n<ol>\r\n<li><code>==</code>: equal to.</li>\r\n<li><code>!=</code>: not equal to.</li>\r\n</ol>\r\n<p>Equality operators do not require that operands share the same ordering. For example, you can test equality across <code>boolean</code>, <code>char</code>, or <code>int</code> data types. The example below combines assigning variables and using an equality operator:</p>\r\n<code>char myChar = ''A'';\r\nint myInt = -2;\r\nSystem.out.println(myChar == myInt);\r\n</code>\r\n<p>The example above will print out <code>false</code> because the value of <code>myChar</code> (<code>''A''</code>) is not the same value as <code>myInt</code> (<code>''-2''</code>).</p>', '<p>Use any equality operator to directly compare two Boolean values. Do not declare any variables.</p>', 'EqualityOperators', 'public class EqualityOperators {\r\n	public static void main(String[] args) {\r\n\r\n		System.out.println();\r\n\r\n	}\r\n}', 'EqualityOperators'),
(13, 1, '', '<p>Congratulations! You''ve learned some of the building blocks of Java programming. What can we generalize so far?</p>\r\n<ul>\r\n<li><em>Data Types</em> are <code>int</code>, <code>boolean</code>, and <code>char</code>.</li>\r\n<li><em>Variables</em> are used to store values.</li>\r\n<li><em>Whitespace</em> helps make code easy to read for you and others.</li>\r\n<li><em>Comments</em> describe code and its purpose.</li>\r\n<li><em>Arithmetic Operators</em> include <code>+</code>, <code>-</code>, <code>*</code>, <code>/</code>, and <code>%</code>.</li>\r\n<li><em>Relational Operators</em> include <code>&lt;</code>, <code>&lt;=</code>, <code>&gt;</code>, and <code>&gt;=</code>.</li>\r\n<li><em>Equality Operators</em> include <code>==</code> and <code>!=</code>.</li>\r\n</ul>\r\n<p>A full understanding of these concepts is key to understanding the remainder of the Java course. Let''s keep going!</p>', '<p>Write a single line comment anywhere you want. It can be anything! (Make sure it starts with <code>//</code>)</p><p>Set the <code>boolean</code> variable <code>isComplete</code> to <code>true</code>.</p><p>Set the <code>int</code> variable <code>epicLevel</code> equal to <code>awesomeLevel</code> multiplied by 2.</p><p>Uncomment the last line so that the console prints out the value of <code>epicLevel</code>.</p>', 'Generalizations', 'public class Generalizations {\r\n	public static void main(String[] args) {\r\n\r\n\r\n		boolean isComplete;\r\n		int awesomeLevel;\r\n		int epicLevel;		\r\n		/*System.out.println(epicLevel);*/\r\n		\r\n\r\n	}\r\n}', 'Generalizations'),
(14, 2, 'What is HTML?', '<p>HTML is the language used to create the web pages you visit everyday. It provides a logical way to structure content for web pages.</p>\n<p>Let''s analyze the acronym "HTML", as it contains a lot of useful information. HTML stands for <strong>H</strong>yper<strong>T</strong>ext <strong>M</strong>arkup <strong>L</strong>anguage.</p>\n<p>A markup language is a computer language that defines the structure and presentation of raw text. Markup languages work by surrounding raw text with information the computer can interpret, "marking it up" for processing.</p>\n<p>HyperText is text displayed on a computer or device that provides access to other text through links, also known as &ldquo;hyperlinks&rdquo;. In fact, you probably clicked on many, many hyperlinks on your path to this Codecademy course!</p>\n<p>In this course, you''ll learn how to use the fundamentals of HTML to structure, present, and link content. You''ll also learn how to use CSS, or Cascading Style Sheets, to style the HTML content you add to web pages.</p>\n<p>Let''s get started!</p>', '<p><strong>1. </strong>In the code editor to the right, type your name in between <code>&lt;h1&gt;</code> and <code>&lt;/h1&gt;</code>, then press Run.</p>', 'index.html', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;my heading&lt;/h1&gt;\n        &lt;button&gt;get started&lt;/button&gt;\n    &lt;/body&gt;\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;my heading&lt;/h1&gt;\n        &lt;button&gt;get started&lt;/button&gt;\n    &lt;/body&gt;\n&lt;/html&gt;'),
(15, 2, '!DOCTYPE', '<div>\n<p>A <a href="https://en.wikipedia.org/wiki/Web_browser" target="_blank">web browser</a> must know what language a document is written in before they can process the contents of the document.</p>\n<p>You can let web browsers know that you are using the HTML language by starting your HTML document with a <em>document type declaration</em>.</p>\n<p>The declaration is the following:</p>\n<div><span style="background-color: #808080;">&lt;!DOCTYPE html&gt;</span></div>\n<p>This declaration is an instruction. It tells the browser what type of document to expect, along with what version of HTML is being used in the document. <code>&lt;!DOCTYPE html&gt;</code><em>must</em> be the first line of code in all of your HTML documents.</p>\n<p><strong>Note:</strong> If you don''t use the doctype declaration, your HTML code will likely still work, however, it''s risky. Right now, the browser will correctly assume that you are using HTML5, as HTML5 is the current standard. In the future, however, a new standard will override HTML5. Future browsers may assume you''re using a different, newer standard, in which case your document will be interpreted incorrectly. To make sure your document is forever interpreted correctly, always include <code>&lt;!DOCTYPE html&gt;</code> at the very beginning of your HTML documents.</p>\n</div>', '<div><strong>1. </strong>On line 1, add the <code>&lt;!DOCTYPE html&gt;</code> declaration.</div>', 'index.html', '&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;my heading&lt;/h1&gt;\n        &lt;button&gt;get started&lt;/button&gt;\n    &lt;/body&gt;\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;my heading&lt;/h1&gt;\n        &lt;button&gt;get started&lt;/button&gt;\n    &lt;/body&gt;\n&lt;/html&gt;'),
(16, 2, 'Preparing for HTML', '<div>\n<p>Great! Browsers that read your code will know to expect HTML when they attempt to read your file.</p>\n<p>The <code>&lt;!DOCTYPE html&gt;</code> declaration is only the beginning, however. It only tells the browser that you plan on using HTML in the document, it doesn''t actually add any HTML structure or content.</p>\n<p>To begin adding HTML structure and content, we <em>must</em> first add opening and closing <code>&lt;html&gt;</code> <em>tags</em>, like so:</p>\n<div style="background-color: #808080;">\n<span>&lt;!DOCTYPE html&gt;</span><br>\n<span>&lt;html&gt;</span><br>\n<span>&lt;/html&gt;</span></div>\n<p>Anything between <code>&lt;html&gt;</code> and <code>&lt;/html&gt;</code> will be considered HTML code. Without these tags, it''s possible that browsers could incorrectly interpret your HTML code and present HTML content in unexpected ways.</p>\n</div>', '<div><strong class="fcn-checkpoint__number">1. </strong>After your <code>&lt;!DOCTYPE html&gt;</code> declaration, add opening (<code>&lt;html&gt;</code>) and closing (<code>&lt;/html&gt;</code>) tags.</div>', 'index.html', '&lt;!DOCTYPE html&gt;', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;/html&gt;'),
(17, 2, 'HTML Anatomy', '<div>\r\n<p>Before we move forward, let''s standardize some vocabulary we''ll use as you learn HTML. Here are some of the terms you''ll see used in this course:</p>\r\n<ol>\r\n<li>\r\n<p>Angle brackets - In HTML, the characters <code>&lt;</code> and <code>&gt;</code> are known as angle brackets.</p>\r\n</li>\r\n<li>\r\n<p>HTML element (or simply, element) - HTML code that lives inside of angle brackets.</p>\r\n</li>\r\n<li>\r\n<p>Opening tag - the first, or opening, HTML tag used to start an HTML element.</p>\r\n</li>\r\n<li>\r\n<p>Closing tag - the second, or closing, HTML tag used to end an HTML element. Closing tags have a forward slash (<code>/</code>) inside of them.</p>\r\n</li>\r\n</ol>\r\n<p>With the exception of a few HTML elements, most elements consist of an opening and closing tag.</p>\r\n<p>In the following example, there is one paragraph <em>element</em>, made up of one <em>opening tag</em> (<code>&lt;p&gt;</code>) and one <em>closing tag</em> (<code>&lt;/p&gt;</code>):</p>\r\n<div class="CodeMirror" data-reactid="2"><span style="background-color: #808080;"><span class="cm-tag bracket" data-reactid="3">&lt;</span><span class="cm-tag" data-reactid="4">p</span><span class="cm-tag bracket" data-reactid="5">&gt;</span>Hello there!<span class="cm-tag bracket" data-reactid="7">&lt;/</span><span class="cm-tag" data-reactid="8">p</span><span class="cm-tag bracket" data-reactid="9">&gt;</span></span></div>\r\n<pre>&nbsp;</pre>\r\n</div>', '<div><span style="background-color: #808080;"><span class="cm-tag bracket" data-reactid="3">&lt;</span><span class="cm-tag" data-reactid="4">p</span><span class="cm-tag bracket" data-reactid="5">&gt;</span>Hello there!<span class="cm-tag bracket" data-reactid="7">&lt;/</span><span class="cm-tag" data-reactid="8">p</span><span class="cm-tag bracket" data-reactid="9">&gt;</span></span></div>', 'index.html', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;p&gt;Hello there!&lt;/p&gt;\n    &lt;/body&gt;\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;p&gt;Hello there!&lt;/p&gt;\n    &lt;/body&gt;\n&lt;/html&gt;'),
(18, 2, 'The Head', '<div>\n<p>So far, you''ve declared to the browser the type of document it can expect (an HTML document) and added the HTML element (<code>&lt;html&gt;</code>) that will contain the rest of your code. Let''s also give the browser some information about the page. We can do this by adding a <code>&lt;head&gt;</code> element.</p>\n<p>The <code>&lt;head&gt;</code> element will contain information about the page that isn''t displayed directly on the actual web page (you''ll see an example in the next exercise).</p>\n<div style="background-color: #808080;">\n<div class="CodeMirror" data-reactid="2"><span class="cm-meta" data-reactid="3">&lt;!DOCTYPE html&gt;</span></div>\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="5">&lt;</span><span class="cm-tag" data-reactid="6">html</span><span class="cm-tag bracket" data-reactid="7">&gt;</span></div>\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="10">&nbsp;&nbsp;&nbsp; &lt;</span><span class="cm-tag" data-reactid="11">head</span><span class="cm-tag bracket" data-reactid="12">&gt;</span></div>\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="16">&nbsp;&nbsp;&nbsp; &lt;/</span><span class="cm-tag" data-reactid="17">head</span><span class="cm-tag bracket" data-reactid="18">&gt;</span></div>\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="20">&lt;/</span><span class="cm-tag" data-reactid="21">html</span><span class="cm-tag bracket" data-reactid="22">&gt;</span></div>\n  <pre>&nbsp;</pre></div>\n</div>', '<div><span><span class="cm-tag bracket" data-reactid="9"><strong class="fcn-checkpoint__number">1. </strong></span></span>Add a <code>&lt;head&gt;</code> element to <strong>index.html</strong>.<span style="background-color: #808080;"><span class="cm-tag bracket" data-reactid="9"><br /></span></span></div>', 'index.html', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n    &lt;/head&gt;\r\n&lt;/html&gt;'),
(19, 2, 'Page Title', '<div>\r\n<p>What kind of information about the web page can the <code>&lt;head&gt;</code> element contain?</p>\r\n<p>Well, if you look at the top of your browser (or at one of the tabs you may have open in this browser window), you''ll notice the words <code>Learn HTML &amp; CSS: Part I | Codecademy</code>, which is the <em>title</em> of this web page.</p>\r\n<p>The browser displays the title of the page because the title can be specified directly inside of the <code>&lt;head&gt;</code> element, by using a <code>&lt;title&gt;</code> element.</p>\r\n  <div style="background-color: #999999">\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-meta" data-reactid="3">&lt;!DOCTYPE html&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="5">&lt;</span><span class="cm-tag" data-reactid="6">html</span><span class="cm-tag bracket" data-reactid="7">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="10">&nbsp;&nbsp;&nbsp; &lt;</span><span class="cm-tag" data-reactid="11">head</span><span class="cm-tag bracket" data-reactid="12">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;</span><span class="cm-tag" data-reactid="16">title</span><span class="cm-tag bracket" data-reactid="17">&gt;</span>My Coding Journal<span class="cm-tag bracket" data-reactid="19">&lt;/</span><span class="cm-tag" data-reactid="20">title</span><span class="cm-tag bracket" data-reactid="21">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="24">&nbsp;&nbsp;&nbsp; &lt;/</span><span class="cm-tag" data-reactid="25">head</span><span class="cm-tag bracket" data-reactid="26">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="28">&lt;/</span><span class="cm-tag" data-reactid="29">html</span><span class="cm-tag bracket" data-reactid="30">&gt;</span></div>\r\n  </div>\r\n<pre><code class="lang-html"><span class="_18cGopAuUQVCOplu8pL9b5 _12mn8XNbByNCYxyzndA6if _3xp4c3Gvny8Oap6jE2-Q_ _2RE0-ZG6UYzWFn9_EER397 undefined" data-reactroot="" data-reactid="1" data-react-checksum="1966546896">If we were to open a file containing the HTML code in the example above, the browser would display the words <span style="background-color: #999999;"><code>My Coding Journal</code></span> in the title bar (or in the tab''s title).</span>\r\n</code></pre>\r\n</div>', '<div><strong class="fcn-checkpoint__number">1. </strong>Add a title to your web page using the <code>&lt;title&gt;</code> element. The title can be be anything you''d like.</div>', 'index.html', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n    &lt;/head&gt;\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;My Coding Journal&lt;/title&gt;\n    &lt;/head&gt;\n&lt;/html&gt;'),
(20, 2, 'Where Does The Title Appear?', '<div>\r\n<div class="accordion-section-body">\r\n<div class="jfdpfOzslotw2euWgxJNN _1PzvoBkjTI2SFvb5o9YAHW">\r\n<p>The web page you are currently viewing has a title of <code>Learn HTML &amp; CSS: Part I | Codecademy</code>.</p>\r\n<p>Because the browser used in this course does not have a title bar, you won''t be able to see the title of a web page if you add one. The diagram to the right, however, illustrates specifically where a web page''s title would appear on a browser.</p>\r\n</div>\r\n</div>\r\n</div>', '<p>The web page you are currently viewing has a title of <code>Learn HTML &amp; CSS: Part I | Codecademy</code>.</p>', 'index.html', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Your Website title will be this&lt;/title&gt;\n    &lt;/head&gt;\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Your Website title will be this&lt;/title&gt;\n    &lt;/head&gt;\n&lt;/html&gt;'),
(21, 2, 'The Body', '<div>\r\n<p>We''ve added some HTML, but still haven''t seen any results in the web browser to the right. Why is that?</p>\r\n<p>Before we can add content that a browser will display, we have to add a <em>body</em> to the HTML file. Once the file has a body, many different types of content can be added within the body, like text, images, buttons, and much more.</p>\r\n</div>\r\n<div style="background-color: #999999;">\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-meta" data-reactid="3">&lt;!DOCTYPE html&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="5">&lt;</span><span class="cm-tag" data-reactid="6">html</span><span class="cm-tag bracket" data-reactid="7">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="10">&nbsp;&nbsp;&nbsp; &lt;</span><span class="cm-tag" data-reactid="11">head</span><span class="cm-tag bracket" data-reactid="12">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;</span><span class="cm-tag" data-reactid="16">title</span><span class="cm-tag bracket" data-reactid="17">&gt;Mlab Coding School</span><span class="cm-tag bracket" data-reactid="19">&lt;/</span><span class="cm-tag" data-reactid="20">title</span><span class="cm-tag bracket" data-reactid="21">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="24">&nbsp;&nbsp;&nbsp; &lt;/</span><span class="cm-tag" data-reactid="25">head</span><span class="cm-tag bracket" data-reactid="26">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="29">&nbsp;&nbsp;&nbsp; &lt;</span><span class="cm-tag" data-reactid="30">body</span><span class="cm-tag bracket" data-reactid="31">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="35">&nbsp;&nbsp;&nbsp; &lt;/</span><span class="cm-tag" data-reactid="36">body</span><span class="cm-tag bracket" data-reactid="37">&gt;</span></div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="39">&lt;/</span><span class="cm-tag" data-reactid="40">html</span><span class="cm-tag bracket" data-reactid="41">&gt;</span></div>\r\n<pre>&nbsp;</pre>\r\n</div>\r\n<p>All of the code above demonstrates what is sometimes referred to as <a href="https://en.wikipedia.org/wiki/Boilerplate_code" target="_blank">"boilerplate code."</a></p>\r\n<p>The term "boilerplate code" is used to describe the basic HTML code required to begin creating a web page. Without <em>all</em> of the elements in the boilerplate code, you''ll risk starting without the minimum requirements considered to be best practice.</p>\r\n<p><strong>Note:</strong> The rest of the course will use code examples like the one above. To save space, however, code examples will avoid including common elements like the declaration, head, and so on. Unless otherwise specified, you can assume that the code in the example code blocks belongs directly within the HTML file''s body.</p>', '<p><strong class="fcn-checkpoint__number">1. </strong>Add a body to your web page using the <code>&lt;body&gt;</code> element.</p>', 'index.html', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;title&gt;Mlab Coding School&lt;/title&gt;\r\n    &lt;/head&gt;\r\n&lt;/html&gt;', '&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;title&gt;Mlab Coding School&lt;/title&gt;\r\n    &lt;/head&gt;\r\n    &lt;body&gt;\r\n    &lt;/body&gt;\r\n&lt;/html&gt;'),
(22, 2, 'Review Structure', '<div class="accordion-section-body">\r\n<div class="jfdpfOzslotw2euWgxJNN _1PzvoBkjTI2SFvb5o9YAHW">\r\n<p>Congratulations on completing the first unit of HTML &amp; CSS! You are well on your way to becoming a skilled web developer.</p>\r\n<p>Let''s review what you''ve learned so far:</p>\r\n<ol>\r\n<li>The <code>&lt;!DOCTYPE html&gt;</code> declaration should always be the first line of code in your HTML files.</li>\r\n<li>The <code>&lt;html&gt;</code> element will contain all of your HTML code.</li>\r\n<li>Information about the web page, like the title, belongs within the <code>&lt;head&gt;</code> of the page.</li>\r\n<li>You can add a title to your web page by using the <code>&lt;title&gt;</code> element, inside of the head.</li>\r\n<li>Code for visible HTML content will be placed inside of the <code>&lt;body&gt;</code> element.</li>\r\n</ol>\r\n<p>What you learned in this lesson constitutes the required setup for all HTML files. The rest of the course will teach you more about how to add content using HTML and how to style that content using CSS!</p>\r\n</div>\r\n</div>', '<div class="accordion-section-body">\r\n<div class="jfdpfOzslotw2euWgxJNN _1PzvoBkjTI2SFvb5o9YAHW"><strong class="fcn-checkpoint__number">1. </strong>Add the required declaration on line 1 of <strong>index.html</strong>.</div>\r\n<div class="jfdpfOzslotw2euWgxJNN _1PzvoBkjTI2SFvb5o9YAHW">&nbsp;</div>\r\n<div class="jfdpfOzslotw2euWgxJNN _1PzvoBkjTI2SFvb5o9YAHW">\r\n<div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied"><strong class="fcn-checkpoint__number">2. </strong>Start an HTML document.</div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied"><strong class="fcn-checkpoint__number">3. </strong>Add a head to the web page.</div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied"><strong class="fcn-checkpoint__number">4. </strong>Add a title to the web page. The title should be <span style="background-color: #999999;">&lt;title&gt;Mlab Coding School&lt;/title&gt;.</span></div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied"><strong class="fcn-checkpoint__number">5. </strong>Add a body to the web page.</div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied"><strong class="fcn-checkpoint__number">6. </strong>In <strong>index.html</strong>, copy the following line of code and paste it inside of the body:</div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied">&nbsp;</div>\r\n<div class="fcn-checkpoint fcn-checkpoint--satisfied">\r\n<div class="CodeMirror" data-reactid="2"><span style="background-color: #999999;"><span class="cm-tag bracket" data-reactid="3">&lt;</span><span class="cm-tag" data-reactid="4">h1</span><span class="cm-tag bracket" data-reactid="5">&gt;</span>Hello World!<span class="cm-tag bracket" data-reactid="7">&lt;/</span><span class="cm-tag" data-reactid="8">h1</span><span class="cm-tag bracket" data-reactid="9">&gt;</span></span></div>\r\n<div class="CodeMirror" data-reactid="2">&nbsp;</div>\r\n<div class="CodeMirror" data-reactid="2"><span class="cm-tag bracket" data-reactid="9">What happened to your web page? You''ll learn more details in the next unit.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'index.html', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Mlab Coding School&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;Hello World!&lt;/h1&gt;\n    &lt;/body&gt;\n&lt;/html&gt;'),
(24, 2, 'ahero man hero', 'ahero kajsdhfkj', 'ahero shdk', 'ahero askdfh', 'ahero asdf', 'aHero asdf'),
(25, 2, 'What is HTML? test', '<p>HTML is the language used to create the web pages you visit everyday. It provides a logical way to structure content for web pages.</p>\r\n<p>Let''s analyze the acronym "HTML", as it contains a lot of useful information. HTML stands for <strong>H</strong>yper<strong>T</strong>ext <strong>M</strong>arkup <strong>L</strong>anguage.</p>\r\n<p>A markup language is a computer language that defines the structure and presentation of raw text. Markup languages work by surrounding raw text with information the computer can interpret, "marking it up" for processing.</p>\r\n<p>HyperText is text displayed on a computer or device that provides access to other text through links, also known as “hyperlinks”. In fact, you probably clicked on many, many hyperlinks on your path to this Codecademy course!</p>\r\n<p>In this course, you''ll learn how to use the fundamentals of HTML to structure, present, and link content. You''ll also learn how to use CSS, or Cascading Style Sheets, to style the HTML content you add to web pages.</p>\r\n<p>Let''s get started!</p>', '<p><strong>1. </strong>In the code editor to the right, type your name in between <code><h1></code> and <code></h1></code>, then press Run.</p>', 'index.html', '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <title>Mlab School</title>\r\n    </head>\r\n    <body>\r\n        <h1>my heading</h1>\r\n        <button>get started</button>\r\n        <h4>hello</h4>\r\n    </body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <title>Mlab School</title>\r\n    </head>\r\n    <body>\r\n        <h1>my heading</h1>\r\n        <button>get started</button>\r\n    </body>\r\n</html>'),
(27, 2, 'What is HTML? test2', '<p>HTML is the language used to create the web pages you visit everyday. It provides a logical way to structure content for web pages.</p>\r\n<p>Let''s analyze the acronym "HTML", as it contains a lot of useful information. HTML stands for <strong>H</strong>yper<strong>T</strong>ext <strong>M</strong>arkup <strong>L</strong>anguage.</p>\r\n<p>A markup language is a computer language that defines the structure and presentation of raw text. Markup languages work by surrounding raw text with information the computer can interpret, "marking it up" for processing.</p>\r\n<p>HyperText is text displayed on a computer or device that provides access to other text through links, also known as “hyperlinks”. In fact, you probably clicked on many, many hyperlinks on your path to this Codecademy course!</p>\r\n<p>In this course, you''ll learn how to use the fundamentals of HTML to structure, present, and link content. You''ll also learn how to use CSS, or Cascading Style Sheets, to style the HTML content you add to web pages.</p>\r\n<p>Let''s get started!</p>', '<p><strong>1. </strong>In the code editor to the right, type your name in between <code><h1></code> and <code></h1></code>, then press Run.</p>', 'index.html', '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <title>Mlab School</title>\r\n    </head>\r\n    <body>\r\n        <h1>my heading</h1>\r\n        <p>hello man</p>\r\n        <button>get started</button>\r\n    </body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <title>Mlab School</title>\r\n    </head>\r\n    <body>\r\n        <h1>my heading</h1>\r\n        <p>hello man</p>\r\n        <button>get started</button>\r\n    </body>\r\n</html>'),
(35, 2, 'html back to old', 'asdf', 'asdf', 'index.html', '<!DOCTYPE html>\r\n<html lang="en">\r\n<head>\r\n    <meta charset="UTF-8">\r\n    <title>Code School</title>\r\n</head>\r\n<body>\r\n    <h2>hello,world</h2>\r\n    <h3></h3>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html lang="en">\r\n<head>\r\n    <meta charset="UTF-8">\r\n    <title>Code School</title>\r\n</head>\r\n<body>\r\n    <h2>hello,world</h2>\r\n    <h3>this hero time</h3>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updateinfos`
--

CREATE TABLE `updateinfos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updateinfos`
--

INSERT INTO `updateinfos` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(46, 'hello', 'hello1@gmail.com', '2017-05-11', '2017-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `usercourses`
--

CREATE TABLE `usercourses` (
  `id` int(32) NOT NULL,
  `uID` int(32) NOT NULL,
  `courseID` int(32) NOT NULL,
  `lessonLevel` int(32) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(2) NOT NULL DEFAULT '0',
  `htmlLevel` int(12) NOT NULL DEFAULT '1',
  `javaLevel` int(12) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`, `htmlLevel`, `javaLevel`) VALUES
(1, 'det', 'det@gmail.com', '$2y$10$kiPgjmexXihhvsH7l5bwUO2DF0AR20ENuDHMYzBWGqaXx46r.8HAq', 'advyWF1TrGwKpC2k4QKOPG1GuKI7prUqLVtvtltL6uxcoVfYHnmCyRA4RTLE', '2017-01-09 02:16:28', '2017-01-22 01:44:27', 0, 9, 1),
(2, 'admin', 'admin@gmail.com', '$2y$10$Mfmr43sqvi0qZ1K/O1LeOuR5VR3wbgZHPcU7UNvtIfjWQnTLtefXe', 'TCJ0m7GL7DJhUzQIeWRHVuLhNyveRyoQZwgmnwKpgaudbuufWAQGXi3mu8ip', '2017-01-09 02:17:01', '2017-04-09 21:21:28', 1, 1, 5),
(3, 'hero', 'hero@gmail.com', '$2y$10$0mdzQzfoibEoQzm759TSa.uqtc5wTWE8fh9VHoHH3R3mLeUbUFHxa', '1sjmSv5q0qs1d8gdXu3CaYEwAaShPwwd7ZKNB2pQZMWMgfCYs73gVTI1lVSE', '2017-01-11 08:38:59', '2017-01-12 21:38:58', 0, 5, 1),
(6, 'heloo', 'hi@gmail.com', '$2y$10$iUdU/A6HUN8tZ.Ct9MvtJe8ODJuZa0K3hUEcU6KnM5Oq3MG6YphFe', 'jjSz5gNuZvX7GfeY6F4eYsbwS0s1ETkH5rNcJAy74NZvjxbFtBbB5AI5JLXZ', '2017-05-09 01:24:24', '2017-05-09 01:25:00', 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`chapter_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseid` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `updateinfos`
--
ALTER TABLE `updateinfos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usercourses`
--
ALTER TABLE `usercourses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uID` (`uID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `chapter_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `updateinfos`
--
ALTER TABLE `updateinfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `usercourses`
--
ALTER TABLE `usercourses`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
