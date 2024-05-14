package com.example.wedding_backend.service;

import com.example.wedding_backend.Repository.InvoiceRepository;
import com.example.wedding_backend.entity.Invoice;

import com.example.wedding_backend.entity.OrderSeller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class InvoiceService {
    @Autowired
    private InvoiceRepository invoiceRepository;



    @Autowired
    private OrderSellerService orderSellerService;

    public List<Invoice> findAllInvoce() {
        return invoiceRepository.findAll();
    }




    public void deleteInvoce(String id) {
        invoiceRepository.deleteById(id);
    }


    public void confirmOrder(String invoiceId, String orderSellerId) {
        Invoice invoice = invoiceRepository.findById(invoiceId).get();
        OrderSeller orderSeller = orderSellerService.findOrderSellerById(orderSellerId);
        invoice.getOrder().add(orderSeller);
        invoiceRepository.save(invoice);
    }




}
