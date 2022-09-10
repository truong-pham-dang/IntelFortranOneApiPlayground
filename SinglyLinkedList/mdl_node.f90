MODULE mdl_node
    IMPLICIT NONE
    TYPE :: node
        INTEGER :: value
        TYPE(node), POINTER :: next
        CONTAINS
            PROCEDURE new => allocate_node
            PROCEDURE describe => display_node_value
    END TYPE

    CONTAINS
        SUBROUTINE allocate_node(elem, num)
            IMPLICIT NONE
            CLASS(node) :: elem
            INTEGER :: num

            elem%value = num
            NULLIFY(elem%next)
            
        END SUBROUTINE
        
        SUBROUTINE display_node_value(elem)
            IMPLICIT NONE
            CLASS(node) :: elem
            
            WRITE(*, *) "Node's value: ", elem%value
        END SUBROUTINE
END MODULE