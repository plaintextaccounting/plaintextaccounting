VAT is a consumption tax applied at each stage of production and distribution where value is added.
For businesses registered for VAT, maintaining accurate records is important for compliance and tracking tax liabilities. 

### Recording a Purchase with VAT (Input VAT)

When a business purchases goods or services from a VAT-registered supplier, it pays VAT (Input VAT) that can typically be reclaimed.  This reclaimed VAT is considered an asset.

Example: Buying office supplies for £100 with 20% VAT.

```hledger
2025-01-01 * Purchase office supplies
    expenses:office supplies                    £100
    assets:vat:input                             £20
    assets:cash                                -£120
```

### Recording a Sale with VAT (Output VAT)

When a business sells goods or services, it collects VAT (Output VAT) from the customer and owes this amount to the tax authorities. Output VAT is considered a liability.

Example: Selling goods for £500 with 20% VAT.

```hledger
2025-01-02 * Sale of goods
    assets:cash                                 £600
    income:sales                               -£500
    liabilities:vat:output                     -£100
```

### Balancing VAT at the end of the Period

At the end of a VAT period (e.g., monthly or quarterly), the business balances the Input VAT and Output VAT accounts to determine the net VAT payable or receivable.

Example (VAT Payable): Output VAT is £100 and Input VAT is £20.

```hledger
2025-01-31 * VAT adjustment
    ; consolidate smaller into larger
    assets:vat:input                            -£20 = £0
    liabilities:vat:output                       £20
    ; convert to a payable or receivable
    liabilities:vat:output                       £80 = £0
    liabilities:vat:payable                     -£80
```

### Settling VAT

When VAT is payable, the business pays the tax authorities.

Example: Paying the above £80 VAT payable.

```hledger
2025-02-15 * VAT payment
    liabilities:vat:payable                      £80 = £0
    assets:bank                                 -£80
```

If VAT was receivable, the business would receive a refund from the tax authorities instead.

```hledger
2025-02-15 * VAT refund
    assets:vat:receivable                       -£80 = £0
    assets:bank                                  £80
```
