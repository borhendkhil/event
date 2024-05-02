package com.example.wedding_backend.controller;

import com.example.wedding_backend.entity.Invoice;
import com.example.wedding_backend.service.InvoiceService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/invoice")

public class invoiceController {
    @Autowired
    private InvoiceService invoiceService;

    @GetMapping("/getAll")
    public List<Invoice> getAllInvoices(){
        return invoiceService.findAllInvoce();
    }
    @DeleteMapping("/delete/{id}")
    public void deleteInvoice(@PathVariable int id){
        invoiceService.deleteInvoce(id);
    }
    @PostMapping("/confirmOrder")
    public void confirmOrder(@RequestParam int invoiceId, @RequestParam int orderSellerId){
        invoiceService.confirmOrder(invoiceId, orderSellerId);
    }


}
