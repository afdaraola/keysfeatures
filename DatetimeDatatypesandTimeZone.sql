
Datetime and Interval Datatypes
The datetime datatypes are DATE, TIMESTAMP, TIMESTAMP WITH TIME ZONE, and TIMESTAMP WITH LOCAL TIME ZONE. Values of datetime datatypes are sometimes called datetimes.

The interval datatypes are INTERVAL YEAR TO MONTH and INTERVAL DAY TO SECOND. Values of interval datatypes are sometimes called intervals.

Both datetimes and intervals are made up of fields. The values of these fields determine the value of the datatype. The fields that apply to all Oracle datetime and interval datatypes are:

YEAR

MONTH

DAY

HOUR

MINUTE

SECOND

TIMESTAMP WITH TIME ZONE also includes these fields:

TIMEZONE_HOUR

TIMEZONE_MINUTE

TIMEZONE_REGION

TIMEZONE_ABBR

TIMESTAMP WITH LOCAL TIME ZONE does not store time zone information internally, but you can see local time zone information in SQL output if the TZH:TZM or TZR TZD format elements are specified. 

Table 4-1 Datetime Functions Designed for the DATE Datatype
-------------------------------------------------------------------

Function	Description
ADD_MONTHS   Returns the date d plus n months

LAST_DAY  Returns the last day of the month that contains date

MONTHS_BETWEEN  Returns the number of months between date1 and date2

NEW_TIME  Returns the date and time in zone2 time zone when the date and time in zone1 time zone are date

Note: This function takes as input only a limited number of time zones. You can have access to a much greater number of time zones by combining the FROM_TZ function and the datetime expression.

NEXT_DAY  Returns the date of the first weekday named by char that is later than date

ROUND (date)  Returns date rounded to the unit specified by the fmt format model

TRUNC (date)  Returns date with the time portion of the day truncated to the unit specified by the fmt format model


Table 4-2 Additional Datetime Functions
-------------------------------------------------------------------------------------------------------------------
Datetime Function	Description
CURRENT_DATE

Returns the current date in the session time zone in a value in the Gregorian calendar, of the DATE datatype

CURRENT_TIMESTAMP

Returns the current date and time in the session time zone as a TIMESTAMP WITH TIME ZONE value

DBTIMEZONE

Returns the value of the database time zone. The value is a time zone offset or a time zone region name

EXTRACT (datetime)

Extracts and returns the value of a specified datetime field from a datetime or interval value expression

FROM_TZ

Converts a TIMESTAMP value at a time zone to a TIMESTAMP WITH TIME ZONE value

LOCALTIMESTAMP

Returns the current date and time in the session time zone in a value of the TIMESTAMP datatype

NUMTODSINTERVAL

Converts number n to an INTERVAL DAY TO SECOND literal

NUMTOYMINTERVAL

Converts number n to an INTERVAL YEAR TO MONTH literal

SESSIONTIMEZONE

Returns the value of the current session's time zone

SYS_EXTRACT_UTC

Extracts the UTC from a datetime with time zone offset

SYSDATE

Returns the date and time of the operating system on which the database resides, taking into account the time zone of the database server's operating system that was in effect when the database was started

SYSTIMESTAMP

Returns the system date, including fractional seconds and time zone of the system on which the database resides

TO_CHAR (datetime)

Converts a datetime or interval value of DATE, TIMESTAMP, TIMESTAMP WITH TIME ZONE, or TIMESTAMP WITH LOCAL TIME ZONE datatype to a value of VARCHAR2 datatype in the format specified by the fmt date format

TO_DSINTERVAL

Converts a character string of CHAR, VARCHAR2, NCHAR, or NVARCHAR2 datatype to a value of INTERVAL DAY TO SECOND datatype

TO_NCHAR (datetime)

Converts a datetime or interval value of DATE, TIMESTAMP, TIMESTAMP WITH TIME ZONE, TIMESTAMP WITH LOCAL TIME ZONE, INTERVAL MONTH TO YEAR, or INTERVAL DAY TO SECOND datatype from the database character set to the national character set

TO_TIMESTAMP

Converts a character string of CHAR, VARCHAR2, NCHAR, or NVARCHAR2 datatype to a value of TIMESTAMP datatype

TO_TIMESTAMP_TZ

Converts a character string of CHAR, VARCHAR2, NCHAR, or NVARCHAR2 datatype to a value of the TIMESTAMP WITH TIME ZONE datatype

TO_YMINTERVAL

Converts a character string of CHAR, VARCHAR2, NCHAR, or NVARCHAR2 datatype to a value of the INTERVAL YEAR TO MONTH datatype

TZ_OFFSET

Returns the time zone offset that corresponds to the entered value, based on the date that the statement is executed
-------------------------------------------------------------------------------------------
Datetime Format Parameters
Table 4-3 contains the names and descriptions of the datetime format parameters.

Table 4-3 Datetime Format Parameters
--------------------------------------------------------------------------
Parameter	Description
NLS_DATE_FORMAT

Defines the default date format to use with the TO_CHAR and TO_DATE functions

NLS_TIMESTAMP_FORMAT

Defines the default timestamp format to use with the TO_CHAR and TO_TIMESTAMP functions

NLS_TIMESTAMP_TZ_FORMAT

Defines the default timestamp with time zone format to use with the TO_CHAR and TO_TIMESTAMP_TZ functions


