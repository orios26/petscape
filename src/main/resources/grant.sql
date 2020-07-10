
GRANT ALL ON SEQUENCE public.breeds_breed_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.colors_color_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.customers_customer_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.employee_types_employee_type_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.employees_employee_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.hibernate_sequence TO pbase;

GRANT ALL ON SEQUENCE public.pet_breeds_pet_breed_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.pet_colors_pet_color_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.pets_pet_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.products_product_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.work_items_work_item_id_seq TO pbase;

GRANT ALL ON SEQUENCE public.work_orders_work_order_id_seq TO pbase;

/*
grants all sequence to pbase user
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO pbase;
*/

GRANT ALL ON TABLE public.breeds TO pbase;

GRANT ALL ON TABLE public.colors TO pbase;

GRANT ALL ON TABLE public.customers TO pbase;

GRANT ALL ON TABLE public.employee_types TO pbase;

GRANT ALL ON TABLE public.employees TO pbase;

GRANT ALL ON TABLE public.pet_breeds TO pbase;

GRANT ALL ON TABLE public.pet_colors TO pbase;

GRANT ALL ON TABLE public.pets TO pbase;

GRANT ALL ON TABLE public.products TO pbase;

GRANT ALL ON TABLE public.work_items TO pbase;

GRANT ALL ON TABLE public.work_orders TO pbase;