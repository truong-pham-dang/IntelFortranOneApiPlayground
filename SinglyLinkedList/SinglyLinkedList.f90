PROGRAM main
    USE mdl_node
    IMPLICIT NONE
    
    TYPE(node) :: head
    CALL head%new(1)
    CALL head%describe()
END PROGRAM main