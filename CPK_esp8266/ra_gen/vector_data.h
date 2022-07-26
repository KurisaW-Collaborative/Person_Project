/* generated vector header file - do not edit */
        #ifndef VECTOR_DATA_H
        #define VECTOR_DATA_H
                /* Number of interrupts allocated */
        #ifndef VECTOR_DATA_IRQ_COUNT
        #define VECTOR_DATA_IRQ_COUNT    (9)
        #endif
        /* ISR prototypes */
        void r_icu_isr(void);
        void sci_uart_rxi_isr(void);
        void sci_uart_txi_isr(void);
        void sci_uart_tei_isr(void);
        void sci_uart_eri_isr(void);

        /* Vector table allocations */
        #define VECTOR_NUMBER_ICU_IRQ0 ((IRQn_Type) 0) /* ICU IRQ0 (External pin interrupt 0) */
        #define ICU_IRQ0_IRQn          ((IRQn_Type) 0) /* ICU IRQ0 (External pin interrupt 0) */
        #define VECTOR_NUMBER_SCI0_RXI ((IRQn_Type) 1) /* SCI0 RXI (Receive data full) */
        #define SCI0_RXI_IRQn          ((IRQn_Type) 1) /* SCI0 RXI (Receive data full) */
        #define VECTOR_NUMBER_SCI0_TXI ((IRQn_Type) 2) /* SCI0 TXI (Transmit data empty) */
        #define SCI0_TXI_IRQn          ((IRQn_Type) 2) /* SCI0 TXI (Transmit data empty) */
        #define VECTOR_NUMBER_SCI0_TEI ((IRQn_Type) 3) /* SCI0 TEI (Transmit end) */
        #define SCI0_TEI_IRQn          ((IRQn_Type) 3) /* SCI0 TEI (Transmit end) */
        #define VECTOR_NUMBER_SCI0_ERI ((IRQn_Type) 4) /* SCI0 ERI (Receive error) */
        #define SCI0_ERI_IRQn          ((IRQn_Type) 4) /* SCI0 ERI (Receive error) */
        #define VECTOR_NUMBER_SCI1_RXI ((IRQn_Type) 5) /* SCI1 RXI (Received data full) */
        #define SCI1_RXI_IRQn          ((IRQn_Type) 5) /* SCI1 RXI (Received data full) */
        #define VECTOR_NUMBER_SCI1_TXI ((IRQn_Type) 6) /* SCI1 TXI (Transmit data empty) */
        #define SCI1_TXI_IRQn          ((IRQn_Type) 6) /* SCI1 TXI (Transmit data empty) */
        #define VECTOR_NUMBER_SCI1_TEI ((IRQn_Type) 7) /* SCI1 TEI (Transmit end) */
        #define SCI1_TEI_IRQn          ((IRQn_Type) 7) /* SCI1 TEI (Transmit end) */
        #define VECTOR_NUMBER_SCI1_ERI ((IRQn_Type) 8) /* SCI1 ERI (Receive error) */
        #define SCI1_ERI_IRQn          ((IRQn_Type) 8) /* SCI1 ERI (Receive error) */
        #endif /* VECTOR_DATA_H */