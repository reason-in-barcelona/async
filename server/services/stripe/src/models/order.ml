(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Order.t : Order objects are created to handle end customers' purchases of previously defined [products](https://stripe.com/docs/api#products). You can create, retrieve, and pay individual orders, as well as list all orders. Orders are identified by a unique, random ID.  Related guide: [Tax, Shipping, and Inventory](https://stripe.com/docs/orders).
 *)

type t = {
    (* A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order. *)
    amount: int32;
    (* The total amount that was returned to the customer. *)
    amount_returned: int32 option [@default None];
    (* ID of the Connect Application that created the order. *)
    application: string option [@default None];
    (* A fee in cents that will be applied to the order and transferred to the application owner’s Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees documentation. *)
    application_fee: int32 option [@default None];
    (* The ID of the payment used to pay for the order. Present if the order status is `paid`, `fulfilled`, or `refunded`. *)
    charge: Any_ofstringcharge.t option [@default None];
    (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
    created: int32;
    (* Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). *)
    currency: string;
    (* The customer used for the order. *)
    customer: Any_ofstringcustomerdeleted_customer.t option [@default None];
    (* The email address of the customer placing the order. *)
    email: string option [@default None];
    (* External coupon code to load for this order. *)
    external_coupon_code: string option [@default None];
    (* Unique identifier for the object. *)
    id: string;
    (* List of items constituting the order. An order can have up to 25 items. *)
    items: Order_item.t list;
    (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
    livemode: bool;
    (* Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. *)
    metadata: (string * string) list;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.order_object[@default `Order];
    returns: Orders_resource_order_return_list.t option [@default None];
    (* The shipping method that is currently selected for this order, if any. If present, it is equal to one of the `id`s of shipping methods in the `shipping_methods` array. At order creation time, if there are multiple shipping methods, Stripe will automatically selected the first method. *)
    selected_shipping_method: string option [@default None];
    (* The shipping address for the order. Present if the order is for goods to be shipped. *)
    shipping: Any_ofshipping.t option [@default None];
    (* A list of supported shipping methods for this order. The desired shipping method can be specified either by updating the order, or when paying it. *)
    shipping_methods: Shipping_method.t list;
    (* Current order status. One of `created`, `paid`, `canceled`, `fulfilled`, or `returned`. More details in the [Orders Guide](https://stripe.com/docs/orders/guide#understanding-order-statuses). *)
    status: string;
    (* The timestamps at which the order status was updated. *)
    status_transitions: Any_ofstatus_transitions.t option [@default None];
    (* Time at which the object was last updated. Measured in seconds since the Unix epoch. *)
    updated: int32 option [@default None];
    (* The user's order ID if it is different from the Stripe order ID. *)
    upstream_id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Order objects are created to handle end customers' purchases of previously defined [products](https://stripe.com/docs/api#products). You can create, retrieve, and pay individual orders, as well as list all orders. Orders are identified by a unique, random ID.  Related guide: [Tax, Shipping, and Inventory](https://stripe.com/docs/orders). *)
let create (amount : int32) (created : int32) (currency : string) (id : string) (items : Order_item.t list) (livemode : bool) (_object : Enums.order_object) (status : string) : t = {
    amount = amount;
    amount_returned = None;
    application = None;
    application_fee = None;
    charge = None;
    created = created;
    currency = currency;
    customer = None;
    email = None;
    external_coupon_code = None;
    id = id;
    items = items;
    livemode = livemode;
    metadata = [];
    _object = _object;
    returns = None;
    selected_shipping_method = None;
    shipping = None;
    shipping_methods = [];
    status = status;
    status_transitions = None;
    updated = None;
    upstream_id = None;
}

