
## BASIC:
    CREATE, ALTER, DROP, VIEWS, TRUNCATE

    INSERT, UPDATE, DELETE, SELECT

## Comments => --

## LOGICAL OPERATORS:
    AND
    OR
    NOT

## CONDITIONAL OPERATORS:
    >
    >=
    <
    <=
    = EQUAL TO OPERATOR
    != NOT EQUAL TO OPERATOR
    <> NOT EQUAL TO OPERATOR

## OPERATORS:
    IN
    NOT IN
    BETWEEN
    REGEXP => { 
        ^ => BEGINING
        $ => END
        | => LOGICAL OR
        [ABCD] => SINGLE CHARACTER MATCH
        [A-H] => RANGE OF CHARACTER MATCH
    }
    LIKE => (like is not similar to REGEXP )
    IS NULL
    IS NOT NULL


## Clauses:
    SELECT
    FROM
    WHERE
    ORDER BY
    LIMIT

    INNER JOIN || JOIN ( BOTH ARE SAME )
    OUTER JOIN => LEFT OUTER JOIN || LEFT JOIN ( BOTH ARE SAME )
                  RIGHT OUTER JOIN || RIGHT JOIN ( BOTH ARE SAME )

    NATURAL JOIN
    CROSS JOIN

    UNION => {
        We can combine rows using UNION.
        Using UNION we can combine multiple queries.
        The querries can be against same table or different tables.
    }

    USING
    GROUP BY

## Key Word:
    DISTINCT
    AS
    DESC => ( DESCENDING )
    
## BUILT IN FUNCTION:
    MIN
    MAX