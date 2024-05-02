package com.example.wedding_backend.Repository;

import com.example.wedding_backend.entity.Invoice;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface InvoiceRepository extends MongoRepository<Invoice, Integer> {
}
