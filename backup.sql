PGDMP     $    	                y            ehousebd    13.3    13.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17898    ehousebd    DATABASE     l   CREATE DATABASE ehousebd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE ehousebd;
                postgres    false            �            1259    17930 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17928    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    17940    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17938    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    17922    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17920    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    18054    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    18032    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    18030    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    17912    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17910    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    17901    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17899    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    18206    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    18099    product_banner_productbanner    TABLE     �   CREATE TABLE public.product_banner_productbanner (
    id bigint NOT NULL,
    banner_path character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    product_id bigint NOT NULL
);
 0   DROP TABLE public.product_banner_productbanner;
       public         heap    postgres    false            �            1259    18097 #   product_banner_productbanner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_banner_productbanner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.product_banner_productbanner_id_seq;
       public          postgres    false    224            �           0    0 #   product_banner_productbanner_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.product_banner_productbanner_id_seq OWNED BY public.product_banner_productbanner.id;
          public          postgres    false    223            �            1259    18069     product_category_productcategory    TABLE       CREATE TABLE public.product_category_productcategory (
    id bigint NOT NULL,
    name character varying(150) NOT NULL,
    description text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    slug character varying(255) NOT NULL
);
 4   DROP TABLE public.product_category_productcategory;
       public         heap    postgres    false            �            1259    18067 '   product_category_productcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_category_productcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.product_category_productcategory_id_seq;
       public          postgres    false    220            �           0    0 '   product_category_productcategory_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.product_category_productcategory_id_seq OWNED BY public.product_category_productcategory.id;
          public          postgres    false    219            �            1259    18114 &   product_combination_productcombination    TABLE     �  CREATE TABLE public.product_combination_productcombination (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    combination_string character varying(40) NOT NULL,
    sku character varying(40) NOT NULL,
    stock integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id bigint NOT NULL
);
 :   DROP TABLE public.product_combination_productcombination;
       public         heap    postgres    false            �            1259    18112 -   product_combination_productcombination_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_combination_productcombination_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.product_combination_productcombination_id_seq;
       public          postgres    false    226            �           0    0 -   product_combination_productcombination_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.product_combination_productcombination_id_seq OWNED BY public.product_combination_productcombination.id;
          public          postgres    false    225            �            1259    18179 )   product_image_gallery_productimagegallery    TABLE     !  CREATE TABLE public.product_image_gallery_productimagegallery (
    id bigint NOT NULL,
    thumbnail character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id bigint,
    variant_value_id bigint
);
 =   DROP TABLE public.product_image_gallery_productimagegallery;
       public         heap    postgres    false            �            1259    18177 0   product_image_gallery_productimagegallery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image_gallery_productimagegallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.product_image_gallery_productimagegallery_id_seq;
       public          postgres    false    234            �           0    0 0   product_image_gallery_productimagegallery_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.product_image_gallery_productimagegallery_id_seq OWNED BY public.product_image_gallery_productimagegallery.id;
          public          postgres    false    233            �            1259    18194    product_image_productimage    TABLE     �   CREATE TABLE public.product_image_productimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    product_image_gallery_id bigint
);
 .   DROP TABLE public.product_image_productimage;
       public         heap    postgres    false            �            1259    18192 !   product_image_productimage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.product_image_productimage_id_seq;
       public          postgres    false    236            �           0    0 !   product_image_productimage_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.product_image_productimage_id_seq OWNED BY public.product_image_productimage.id;
          public          postgres    false    235            �            1259    18080    product_product    TABLE     �  CREATE TABLE public.product_product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255),
    slug character varying(255) NOT NULL,
    short_description character varying(1000),
    long_description text,
    is_active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    category_id bigint NOT NULL
);
 #   DROP TABLE public.product_product;
       public         heap    postgres    false            �            1259    18078    product_product_id_seq    SEQUENCE        CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    222            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;
          public          postgres    false    221            �            1259    18153    product_variant_productvariant    TABLE       CREATE TABLE public.product_variant_productvariant (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id bigint NOT NULL,
    variant_id bigint,
    variant_value_id bigint
);
 2   DROP TABLE public.product_variant_productvariant;
       public         heap    postgres    false            �            1259    18151 %   product_variant_productvariant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_variant_productvariant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.product_variant_productvariant_id_seq;
       public          postgres    false    232            �           0    0 %   product_variant_productvariant_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.product_variant_productvariant_id_seq OWNED BY public.product_variant_productvariant.id;
          public          postgres    false    231            �            1259    18218    user_address_useraddress    TABLE     �   CREATE TABLE public.user_address_useraddress (
    id bigint NOT NULL,
    address_line_1 text NOT NULL,
    address_line_2 text,
    user_id bigint NOT NULL
);
 ,   DROP TABLE public.user_address_useraddress;
       public         heap    postgres    false            �            1259    18216    user_address_useraddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_address_useraddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.user_address_useraddress_id_seq;
       public          postgres    false    239            �           0    0    user_address_useraddress_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.user_address_useraddress_id_seq OWNED BY public.user_address_useraddress.id;
          public          postgres    false    238            �            1259    17974 	   user_user    TABLE     �  CREATE TABLE public.user_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    is_superuser boolean NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    mobile_number character varying(11) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.user_user;
       public         heap    postgres    false            �            1259    17987    user_user_groups    TABLE     }   CREATE TABLE public.user_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.user_user_groups;
       public         heap    postgres    false            �            1259    17985    user_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.user_user_groups_id_seq;
       public          postgres    false    213            �           0    0    user_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;
          public          postgres    false    212            �            1259    17972    user_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    211            �           0    0    user_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;
          public          postgres    false    210            �            1259    17995    user_user_user_permissions    TABLE     �   CREATE TABLE public.user_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.user_user_user_permissions;
       public         heap    postgres    false            �            1259    17993 !   user_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.user_user_user_permissions_id_seq;
       public          postgres    false    215            �           0    0 !   user_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;
          public          postgres    false    214            �            1259    18139    variant_value_variantvalue    TABLE     �   CREATE TABLE public.variant_value_variantvalue (
    id bigint NOT NULL,
    value character varying(30) NOT NULL,
    variant_id bigint NOT NULL
);
 .   DROP TABLE public.variant_value_variantvalue;
       public         heap    postgres    false            �            1259    18137 !   variant_value_variantvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variant_value_variantvalue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.variant_value_variantvalue_id_seq;
       public          postgres    false    230            �           0    0 !   variant_value_variantvalue_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.variant_value_variantvalue_id_seq OWNED BY public.variant_value_variantvalue.id;
          public          postgres    false    229            �            1259    18131    variant_variant    TABLE     �   CREATE TABLE public.variant_variant (
    id bigint NOT NULL,
    name character varying(20) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 #   DROP TABLE public.variant_variant;
       public         heap    postgres    false            �            1259    18129    variant_variant_id_seq    SEQUENCE        CREATE SEQUENCE public.variant_variant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.variant_variant_id_seq;
       public          postgres    false    228            �           0    0    variant_variant_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.variant_variant_id_seq OWNED BY public.variant_variant.id;
          public          postgres    false    227            �           2604    17933    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    17943    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    17925    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    18035    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17915    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    17904    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    18102    product_banner_productbanner id    DEFAULT     �   ALTER TABLE ONLY public.product_banner_productbanner ALTER COLUMN id SET DEFAULT nextval('public.product_banner_productbanner_id_seq'::regclass);
 N   ALTER TABLE public.product_banner_productbanner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    18072 #   product_category_productcategory id    DEFAULT     �   ALTER TABLE ONLY public.product_category_productcategory ALTER COLUMN id SET DEFAULT nextval('public.product_category_productcategory_id_seq'::regclass);
 R   ALTER TABLE public.product_category_productcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    18117 )   product_combination_productcombination id    DEFAULT     �   ALTER TABLE ONLY public.product_combination_productcombination ALTER COLUMN id SET DEFAULT nextval('public.product_combination_productcombination_id_seq'::regclass);
 X   ALTER TABLE public.product_combination_productcombination ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    18182 ,   product_image_gallery_productimagegallery id    DEFAULT     �   ALTER TABLE ONLY public.product_image_gallery_productimagegallery ALTER COLUMN id SET DEFAULT nextval('public.product_image_gallery_productimagegallery_id_seq'::regclass);
 [   ALTER TABLE public.product_image_gallery_productimagegallery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    18197    product_image_productimage id    DEFAULT     �   ALTER TABLE ONLY public.product_image_productimage ALTER COLUMN id SET DEFAULT nextval('public.product_image_productimage_id_seq'::regclass);
 L   ALTER TABLE public.product_image_productimage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    18083    product_product id    DEFAULT     x   ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    18156 !   product_variant_productvariant id    DEFAULT     �   ALTER TABLE ONLY public.product_variant_productvariant ALTER COLUMN id SET DEFAULT nextval('public.product_variant_productvariant_id_seq'::regclass);
 P   ALTER TABLE public.product_variant_productvariant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    18221    user_address_useraddress id    DEFAULT     �   ALTER TABLE ONLY public.user_address_useraddress ALTER COLUMN id SET DEFAULT nextval('public.user_address_useraddress_id_seq'::regclass);
 J   ALTER TABLE public.user_address_useraddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    17977    user_user id    DEFAULT     l   ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 ;   ALTER TABLE public.user_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    17990    user_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.user_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    17998    user_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.user_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    18142    variant_value_variantvalue id    DEFAULT     �   ALTER TABLE ONLY public.variant_value_variantvalue ALTER COLUMN id SET DEFAULT nextval('public.variant_value_variantvalue_id_seq'::regclass);
 L   ALTER TABLE public.variant_value_variantvalue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    18134    variant_variant id    DEFAULT     x   ALTER TABLE ONLY public.variant_variant ALTER COLUMN id SET DEFAULT nextval('public.variant_variant_id_seq'::regclass);
 A   ALTER TABLE public.variant_variant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �          0    17930 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   �      �          0    17940    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   �      �          0    17922    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   �      �          0    18054    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    218   �       �          0    18032    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   �       �          0    17912    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   �/      �          0    17901    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �0      �          0    18206    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    237   �3      �          0    18099    product_banner_productbanner 
   TABLE DATA           ^   COPY public.product_banner_productbanner (id, banner_path, is_active, product_id) FROM stdin;
    public          postgres    false    224   �4      �          0    18069     product_category_productcategory 
   TABLE DATA           o   COPY public.product_category_productcategory (id, name, description, created_at, updated_at, slug) FROM stdin;
    public          postgres    false    220   45      �          0    18114 &   product_combination_productcombination 
   TABLE DATA           �   COPY public.product_combination_productcombination (id, name, combination_string, sku, stock, created_at, updated_at, product_id) FROM stdin;
    public          postgres    false    226   �5      �          0    18179 )   product_image_gallery_productimagegallery 
   TABLE DATA           �   COPY public.product_image_gallery_productimagegallery (id, thumbnail, created_at, updated_at, product_id, variant_value_id) FROM stdin;
    public          postgres    false    234   C8      �          0    18194    product_image_productimage 
   TABLE DATA           Y   COPY public.product_image_productimage (id, image, product_image_gallery_id) FROM stdin;
    public          postgres    false    236   �9      �          0    18080    product_product 
   TABLE DATA           �   COPY public.product_product (id, name, display_name, slug, short_description, long_description, is_active, created_at, updated_at, category_id) FROM stdin;
    public          postgres    false    222   J;      �          0    18153    product_variant_productvariant 
   TABLE DATA           ~   COPY public.product_variant_productvariant (id, created_at, updated_at, product_id, variant_id, variant_value_id) FROM stdin;
    public          postgres    false    232   �@      �          0    18218    user_address_useraddress 
   TABLE DATA           _   COPY public.user_address_useraddress (id, address_line_1, address_line_2, user_id) FROM stdin;
    public          postgres    false    239   �B      �          0    17974 	   user_user 
   TABLE DATA           �   COPY public.user_user (id, password, is_superuser, email, first_name, last_name, mobile_number, is_active, is_staff, last_login, date_joined) FROM stdin;
    public          postgres    false    211   �B      �          0    17987    user_user_groups 
   TABLE DATA           A   COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   �C      �          0    17995    user_user_user_permissions 
   TABLE DATA           P   COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   �C      �          0    18139    variant_value_variantvalue 
   TABLE DATA           K   COPY public.variant_value_variantvalue (id, value, variant_id) FROM stdin;
    public          postgres    false    230   �C      �          0    18131    variant_variant 
   TABLE DATA           K   COPY public.variant_variant (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    228   [D      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    204            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 208, true);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);
          public          postgres    false    200            �           0    0 #   product_banner_productbanner_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.product_banner_productbanner_id_seq', 2, true);
          public          postgres    false    223            �           0    0 '   product_category_productcategory_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.product_category_productcategory_id_seq', 3, true);
          public          postgres    false    219            �           0    0 -   product_combination_productcombination_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.product_combination_productcombination_id_seq', 16, true);
          public          postgres    false    225            �           0    0 0   product_image_gallery_productimagegallery_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.product_image_gallery_productimagegallery_id_seq', 25, true);
          public          postgres    false    233            �           0    0 !   product_image_productimage_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.product_image_productimage_id_seq', 52, true);
          public          postgres    false    235            �           0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 8, true);
          public          postgres    false    221            �           0    0 %   product_variant_productvariant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.product_variant_productvariant_id_seq', 29, true);
          public          postgres    false    231            �           0    0    user_address_useraddress_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.user_address_useraddress_id_seq', 1, false);
          public          postgres    false    238            �           0    0    user_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
          public          postgres    false    210            �           0    0 !   user_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           0    0 !   variant_value_variantvalue_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.variant_value_variantvalue_id_seq', 16, true);
          public          postgres    false    229            �           0    0    variant_variant_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.variant_variant_id_seq', 3, true);
          public          postgres    false    227            �           2606    17970    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    17956 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    17945 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    17935    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    17947 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    17927 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    18058 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    218            �           2606    18060 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    218            �           2606    18041 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    17919 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    17917 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    17909 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201                       2606    18213 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    237            �           2606    18104 >   product_banner_productbanner product_banner_productbanner_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.product_banner_productbanner
    ADD CONSTRAINT product_banner_productbanner_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.product_banner_productbanner DROP CONSTRAINT product_banner_productbanner_pkey;
       public            postgres    false    224            �           2606    18106 H   product_banner_productbanner product_banner_productbanner_product_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_banner_productbanner
    ADD CONSTRAINT product_banner_productbanner_product_id_key UNIQUE (product_id);
 r   ALTER TABLE ONLY public.product_banner_productbanner DROP CONSTRAINT product_banner_productbanner_product_id_key;
       public            postgres    false    224            �           2606    18077 F   product_category_productcategory product_category_productcategory_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_category_productcategory
    ADD CONSTRAINT product_category_productcategory_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.product_category_productcategory DROP CONSTRAINT product_category_productcategory_pkey;
       public            postgres    false    220            �           2606    18119 R   product_combination_productcombination product_combination_productcombination_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_combination_productcombination
    ADD CONSTRAINT product_combination_productcombination_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.product_combination_productcombination DROP CONSTRAINT product_combination_productcombination_pkey;
       public            postgres    false    226            �           2606    18121 U   product_combination_productcombination product_combination_productcombination_sku_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_combination_productcombination
    ADD CONSTRAINT product_combination_productcombination_sku_key UNIQUE (sku);
    ALTER TABLE ONLY public.product_combination_productcombination DROP CONSTRAINT product_combination_productcombination_sku_key;
       public            postgres    false    226                        2606    18184 X   product_image_gallery_productimagegallery product_image_gallery_productimagegallery_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_image_gallery_productimagegallery
    ADD CONSTRAINT product_image_gallery_productimagegallery_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.product_image_gallery_productimagegallery DROP CONSTRAINT product_image_gallery_productimagegallery_pkey;
       public            postgres    false    234                       2606    18199 :   product_image_productimage product_image_productimage_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.product_image_productimage
    ADD CONSTRAINT product_image_productimage_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.product_image_productimage DROP CONSTRAINT product_image_productimage_pkey;
       public            postgres    false    236            �           2606    18088 $   product_product product_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_pkey;
       public            postgres    false    222            �           2606    18158 B   product_variant_productvariant product_variant_productvariant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_productvariant
    ADD CONSTRAINT product_variant_productvariant_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.product_variant_productvariant DROP CONSTRAINT product_variant_productvariant_pkey;
       public            postgres    false    232            
           2606    18226 6   user_address_useraddress user_address_useraddress_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.user_address_useraddress
    ADD CONSTRAINT user_address_useraddress_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.user_address_useraddress DROP CONSTRAINT user_address_useraddress_pkey;
       public            postgres    false    239            �           2606    17984    user_user user_user_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.user_user DROP CONSTRAINT user_user_email_key;
       public            postgres    false    211            �           2606    17992 &   user_user_groups user_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_pkey;
       public            postgres    false    213            �           2606    18003 @   user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq;
       public            postgres    false    213    213            �           2606    17982    user_user user_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_user DROP CONSTRAINT user_user_pkey;
       public            postgres    false    211            �           2606    18000 :   user_user_user_permissions user_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    18017 Y   user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq;
       public            postgres    false    215    215            �           2606    18144 :   variant_value_variantvalue variant_value_variantvalue_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.variant_value_variantvalue
    ADD CONSTRAINT variant_value_variantvalue_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.variant_value_variantvalue DROP CONSTRAINT variant_value_variantvalue_pkey;
       public            postgres    false    230            �           2606    18136 $   variant_variant variant_variant_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.variant_variant
    ADD CONSTRAINT variant_variant_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.variant_variant DROP CONSTRAINT variant_variant_pkey;
       public            postgres    false    228            �           1259    17971    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    17967 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    17968 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    17953 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    18066 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    218            �           1259    18052 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    18053 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217                       1259    18215 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    237                       1259    18214 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    237            �           1259    18254 .   product_category_productcategory_slug_149fb949    INDEX     {   CREATE INDEX product_category_productcategory_slug_149fb949 ON public.product_category_productcategory USING btree (slug);
 B   DROP INDEX public.product_category_productcategory_slug_149fb949;
       public            postgres    false    220            �           1259    18255 3   product_category_productcategory_slug_149fb949_like    INDEX     �   CREATE INDEX product_category_productcategory_slug_149fb949_like ON public.product_category_productcategory USING btree (slug varchar_pattern_ops);
 G   DROP INDEX public.product_category_productcategory_slug_149fb949_like;
       public            postgres    false    220            �           1259    18128 :   product_combination_productcombination_product_id_7eb34d15    INDEX     �   CREATE INDEX product_combination_productcombination_product_id_7eb34d15 ON public.product_combination_productcombination USING btree (product_id);
 N   DROP INDEX public.product_combination_productcombination_product_id_7eb34d15;
       public            postgres    false    226            �           1259    18127 8   product_combination_productcombination_sku_490d53e7_like    INDEX     �   CREATE INDEX product_combination_productcombination_sku_490d53e7_like ON public.product_combination_productcombination USING btree (sku varchar_pattern_ops);
 L   DROP INDEX public.product_combination_productcombination_sku_490d53e7_like;
       public            postgres    false    226            �           1259    18246 4   product_image_gallery_prod_variant_value_id_fb7d1eb9    INDEX     �   CREATE INDEX product_image_gallery_prod_variant_value_id_fb7d1eb9 ON public.product_image_gallery_productimagegallery USING btree (variant_value_id);
 H   DROP INDEX public.product_image_gallery_prod_variant_value_id_fb7d1eb9;
       public            postgres    false    234                       1259    18247 =   product_image_gallery_productimagegallery_product_id_c224b74a    INDEX     �   CREATE INDEX product_image_gallery_productimagegallery_product_id_c224b74a ON public.product_image_gallery_productimagegallery USING btree (product_id);
 Q   DROP INDEX public.product_image_gallery_productimagegallery_product_id_c224b74a;
       public            postgres    false    234                       1259    18205 <   product_image_productimage_product_image_gallery_id_8b9e7392    INDEX     �   CREATE INDEX product_image_productimage_product_image_gallery_id_8b9e7392 ON public.product_image_productimage USING btree (product_image_gallery_id);
 P   DROP INDEX public.product_image_productimage_product_image_gallery_id_8b9e7392;
       public            postgres    false    236            �           1259    18096 $   product_product_category_id_0c725779    INDEX     g   CREATE INDEX product_product_category_id_0c725779 ON public.product_product USING btree (category_id);
 8   DROP INDEX public.product_product_category_id_0c725779;
       public            postgres    false    222            �           1259    18094    product_product_slug_76cde0ae    INDEX     Y   CREATE INDEX product_product_slug_76cde0ae ON public.product_product USING btree (slug);
 1   DROP INDEX public.product_product_slug_76cde0ae;
       public            postgres    false    222            �           1259    18095 "   product_product_slug_76cde0ae_like    INDEX     r   CREATE INDEX product_product_slug_76cde0ae_like ON public.product_product USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.product_product_slug_76cde0ae_like;
       public            postgres    false    222            �           1259    18174 2   product_variant_productvariant_product_id_e2f7d75b    INDEX     �   CREATE INDEX product_variant_productvariant_product_id_e2f7d75b ON public.product_variant_productvariant USING btree (product_id);
 F   DROP INDEX public.product_variant_productvariant_product_id_e2f7d75b;
       public            postgres    false    232            �           1259    18175 2   product_variant_productvariant_variant_id_039c6903    INDEX     �   CREATE INDEX product_variant_productvariant_variant_id_039c6903 ON public.product_variant_productvariant USING btree (variant_id);
 F   DROP INDEX public.product_variant_productvariant_variant_id_039c6903;
       public            postgres    false    232            �           1259    18176 8   product_variant_productvariant_variant_value_id_43299beb    INDEX     �   CREATE INDEX product_variant_productvariant_variant_value_id_43299beb ON public.product_variant_productvariant USING btree (variant_value_id);
 L   DROP INDEX public.product_variant_productvariant_variant_value_id_43299beb;
       public            postgres    false    232                       1259    18232 )   user_address_useraddress_user_id_49abc4c1    INDEX     q   CREATE INDEX user_address_useraddress_user_id_49abc4c1 ON public.user_address_useraddress USING btree (user_id);
 =   DROP INDEX public.user_address_useraddress_user_id_49abc4c1;
       public            postgres    false    239            �           1259    18001    user_user_email_1c6f3d1a_like    INDEX     h   CREATE INDEX user_user_email_1c6f3d1a_like ON public.user_user USING btree (email varchar_pattern_ops);
 1   DROP INDEX public.user_user_email_1c6f3d1a_like;
       public            postgres    false    211            �           1259    18015 "   user_user_groups_group_id_c57f13c0    INDEX     c   CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);
 6   DROP INDEX public.user_user_groups_group_id_c57f13c0;
       public            postgres    false    213            �           1259    18014 !   user_user_groups_user_id_13f9a20d    INDEX     a   CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);
 5   DROP INDEX public.user_user_groups_user_id_13f9a20d;
       public            postgres    false    213            �           1259    18029 1   user_user_user_permissions_permission_id_ce49d4de    INDEX     �   CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.user_user_user_permissions_permission_id_ce49d4de;
       public            postgres    false    215            �           1259    18028 +   user_user_user_permissions_user_id_31782f58    INDEX     u   CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.user_user_user_permissions_user_id_31782f58;
       public            postgres    false    215            �           1259    18150 .   variant_value_variantvalue_variant_id_20244533    INDEX     {   CREATE INDEX variant_value_variantvalue_variant_id_20244533 ON public.variant_value_variantvalue USING btree (variant_id);
 B   DROP INDEX public.variant_value_variantvalue_variant_id_20244533;
       public            postgres    false    230                       2606    17962 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    3003    205                       2606    17957 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3008    209    207                       2606    17948 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    2998    205                       2606    18061 @   authtoken_token authtoken_token_user_id_35299eff_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_user_user_id;
       public          postgres    false    3019    211    218                       2606    18042 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    2998                       2606    18047 B   django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id;
       public          postgres    false    211    3019    217                       2606    18107 R   product_banner_productbanner product_banner_produ_product_id_4563c5a4_fk_product_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_banner_productbanner
    ADD CONSTRAINT product_banner_produ_product_id_4563c5a4_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.product_banner_productbanner DROP CONSTRAINT product_banner_produ_product_id_4563c5a4_fk_product_p;
       public          postgres    false    224    222    3047                       2606    18122 \   product_combination_productcombination product_combination__product_id_7eb34d15_fk_product_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_combination_productcombination
    ADD CONSTRAINT product_combination__product_id_7eb34d15_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.product_combination_productcombination DROP CONSTRAINT product_combination__product_id_7eb34d15_fk_product_p;
       public          postgres    false    222    3047    226                       2606    18248 _   product_image_gallery_productimagegallery product_image_galler_product_id_c224b74a_fk_product_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image_gallery_productimagegallery
    ADD CONSTRAINT product_image_galler_product_id_c224b74a_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.product_image_gallery_productimagegallery DROP CONSTRAINT product_image_galler_product_id_c224b74a_fk_product_p;
       public          postgres    false    234    3047    222                       2606    18241 e   product_image_gallery_productimagegallery product_image_galler_variant_value_id_fb7d1eb9_fk_variant_v    FK CONSTRAINT        ALTER TABLE ONLY public.product_image_gallery_productimagegallery
    ADD CONSTRAINT product_image_galler_variant_value_id_fb7d1eb9_fk_variant_v FOREIGN KEY (variant_value_id) REFERENCES public.variant_value_variantvalue(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.product_image_gallery_productimagegallery DROP CONSTRAINT product_image_galler_variant_value_id_fb7d1eb9_fk_variant_v;
       public          postgres    false    3063    230    234                       2606    18200 Z   product_image_productimage product_image_produc_product_image_galler_8b9e7392_fk_product_i    FK CONSTRAINT       ALTER TABLE ONLY public.product_image_productimage
    ADD CONSTRAINT product_image_produc_product_image_galler_8b9e7392_fk_product_i FOREIGN KEY (product_image_gallery_id) REFERENCES public.product_image_gallery_productimagegallery(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.product_image_productimage DROP CONSTRAINT product_image_produc_product_image_galler_8b9e7392_fk_product_i;
       public          postgres    false    236    234    3072                       2606    18089 A   product_product product_product_category_id_0c725779_fk_product_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_category_id_0c725779_fk_product_c FOREIGN KEY (category_id) REFERENCES public.product_category_productcategory(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_category_id_0c725779_fk_product_c;
       public          postgres    false    222    3042    220                       2606    18159 T   product_variant_productvariant product_variant_prod_product_id_e2f7d75b_fk_product_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_productvariant
    ADD CONSTRAINT product_variant_prod_product_id_e2f7d75b_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.product_variant_productvariant DROP CONSTRAINT product_variant_prod_product_id_e2f7d75b_fk_product_p;
       public          postgres    false    222    232    3047                       2606    18164 T   product_variant_productvariant product_variant_prod_variant_id_039c6903_fk_variant_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_productvariant
    ADD CONSTRAINT product_variant_prod_variant_id_039c6903_fk_variant_v FOREIGN KEY (variant_id) REFERENCES public.variant_variant(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.product_variant_productvariant DROP CONSTRAINT product_variant_prod_variant_id_039c6903_fk_variant_v;
       public          postgres    false    3061    228    232                       2606    18169 Z   product_variant_productvariant product_variant_prod_variant_value_id_43299beb_fk_variant_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_productvariant
    ADD CONSTRAINT product_variant_prod_variant_value_id_43299beb_fk_variant_v FOREIGN KEY (variant_value_id) REFERENCES public.variant_value_variantvalue(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.product_variant_productvariant DROP CONSTRAINT product_variant_prod_variant_value_id_43299beb_fk_variant_v;
       public          postgres    false    232    230    3063                        2606    18227 R   user_address_useraddress user_address_useraddress_user_id_49abc4c1_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_address_useraddress
    ADD CONSTRAINT user_address_useraddress_user_id_49abc4c1_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.user_address_useraddress DROP CONSTRAINT user_address_useraddress_user_id_49abc4c1_fk_user_user_id;
       public          postgres    false    211    3019    239                       2606    18009 D   user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id;
       public          postgres    false    213    3008    207                       2606    18004 B   user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id;
       public          postgres    false    211    213    3019                       2606    18023 S   user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm;
       public          postgres    false    3003    215    205                       2606    18018 V   user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id;
       public          postgres    false    215    211    3019                       2606    18145 P   variant_value_variantvalue variant_value_varian_variant_id_20244533_fk_variant_v    FK CONSTRAINT     �   ALTER TABLE ONLY public.variant_value_variantvalue
    ADD CONSTRAINT variant_value_varian_variant_id_20244533_fk_variant_v FOREIGN KEY (variant_id) REFERENCES public.variant_variant(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.variant_value_variantvalue DROP CONSTRAINT variant_value_varian_variant_id_20244533_fk_variant_v;
       public          postgres    false    230    228    3061            �      x������ � �      �      x������ � �      �   �  x�u�Ѳ� ��٧�	:A������t<	�:M4c�i��Wp�] WG��s�,D���\��Ku[�����KH������+�9��a�1�Ɓs3��*~N�/��@��`�0�}z>�e�S���ю��c,
����t����u]^�8A��D��<z!"��GP�:�x�Y�t�˼��]�}=�PN��HEu��R��GE��(��Η�]�~��m�0���ld�3`u��y�>E�9���`�c�cf���f��f=�����=���}���qǻ�E�Ǻ��;��vQ��N�uA��rOE!d��.��V���\��e���a?
������4�z���]��H�RGǦ��5��Y��*��а6�YT> ����F�i'qLv�?ۇu߂b?,�Aӧ&�&J!0�f4@}@��)Ńr�e���t��+o!�⠚�J[��0(����节�]�9��8��qK�+(�5B����!Z�t��U`��j�{{!��Ơ=#�51"�11Rg�1@�o���*���V�ڞd�&����$��D���I�n���l�L���@��4�3����g�C�Ƈ�����F��T8�x�q4�ul5�G�[d�݌�ͥi�n�@�z9���'��<�^9�����<-���r�BvYՠ��r-_(t��>)��S�d����ޏq��E�����x��/��n�2|�p��-?���mHV      �      x������ � �      �   �  x��[ɒ�=�����T 7,}�HY�M1l�^B��a�li8C�e�
��K��*���E���
ȗ���34�ƞ^Z",4`%���38{���Z����W�_�_?\.~���� ���D���g�c4�=����i��4�d�<J��P�P���l�l!���g�X�ƊLp�.��ًV��	���1�Ͼ�\]��
wu8.����F�0;�1���q���e��>^��Y�au�vs}5�'�8�d7X�,C����"��".߇�W��?�_/���p�z�|}���幎ps7���C��ǐ%�@肔��c�d}� 03H�{qx�`�����M��6��׷���>�]�.�6?�~�|��vi� �Z9�S�0�Lb� �g�����*�1��]�t ��B��*�%� 6`�S��L6�P���S�I63�"��	����ĊG}&��	�\�"��7��=g8������Q�z�3g8Iy�+�\�n�x��~ihp6H�{V�G���n6����O+��B�<�R�$7 �88�
���<�Z:��M�5D�y�[�)���ݑ�&	��.��6��	���&�Ԍ��1����<���ƪ	�c	h����儱�����F��6�����C����yIa	v`l��|��z��&���! ��p:+��l��t2��_ERxMH։��
X?�[sNc)V�ri�_�H�#D��c��[k&�L6�/�}����a!�/t�����*�TW9�~��^q�����w{e��cZ�;q.����ɤ�͇���]]��IBǁ$���;?}�z��juy�����~����n����vv�N��y�CzH~�0�xi�h�|�Ԧ����ZT
8�N��І�Zb�
Fu���ey9��"�LA�)����f��h���=���"ff��覈�!������gU/;`(4�E�6b�"���ErQ�E�MD15���e�\�K����xȞ�SsS�H��N�����j}�x��{[�P��r�9��)J�@��\��R����js���������f}��oBSD���b`���\���.1A�0s�ۓ�Zov^����[�^�^�l�ߩ;�3S"3o��Ԓ=ّ~�;��@}6������ϟ�x����Ҟ2"��6���.��|�~/��P�4\m��=������G�������YS������T�ŭ��C.� X��f0N�U�yt:1�3jn�4Im�ϼg�.[�5m4�T�0X/��j�jE���:a���=?cq1m��h�w�oƼ���2?e)�NR��)tj�S46�,E�y��(C�d�����D�i��:k��pc0~�uu
*2��y��pc=Rt��q[���Ŕ�S��l׈�:1��S�ŦO }�NVdR���������,��G�w�S�c��:g��:��[���$��4�;�S�	O���̏u�;2n����]�]�8.2�[�����Z�KԖ���'��4X�4�:�u,�u��i�z��!ֹ�O��@pj�]CCP�:�Q���<cl�M�NnED3x�Ɲfl�1?�0��VL�j����n���m�5$�dh��lk{�ݖ�.�,T�G0��'T���@m��k�)��nC�Y��f��Q|MDŌ�j�ma�<dۤ��m�NS��C�]J�I����,�y��aS��SV���)�F�N%L��Jl�@��Z���&k�P+:�D퇜���i8d�O"��x����凛��ܮ��*�� S$U�Z�x��Ǒb�	v�$~p�B�2��&MѮ��Iն�R�[�4E�it�
�tʖ*Mѡ�Nءc3j�1r7NK��15��� �an\�er_t��c�[�dU�֌J�/:V�q�B��;F�(\B�Yk�Kft��C�s~DA��_{%e�R��EJI��J��#
�V�5�����-�--��v(u�(ِ�����etW�>�E�:�G{TU�PꜮQ�jg�1���XȜnk��L�jEC�Q���/�L�F��~}��ݡ�dsB���3>M���'yNQ�Z��8rn:��E��<�Q��}���:C[�L�@qۅ��|<��@l�Z�	9H��`@�n�l�����JtT4DW?�_�P֜�ht$y#Z'��rT�5��Ri3W=��Rk����k6*(����'ب��Ӏ5=��#�E8�J4
9��4`���Y܋H���mAXSQA��*��|��a[Q�TP������љ�-�k
FP�����Q{���k
�M�<�/��4�TP����Cهo����y&q�H������:��j>IyΊ-����:��j>)(�=Mks�I�C��3�t
A������B����=�ó���xB��vT5_ݬ?�|��g Q���	Ӷpx<�6����s(}�5~�S�x�TOai�Sey1�����ȱ���&[����px\�I+*�ˮ�Z'���zxr�A���s6g 5**u*��!z�i�F�ƥFE�NE=<>���؁͗�QP�SPy��/0뫆��?�$�Āt���@\.�<~�����_}���*	�m�q�H'���F��qus={�5ӌk�(�:o���@$�p�����T����F�iý����r�nS� ��8�����Sy����,�I6UV8�|��}�:}UjĳN3�[��A}�:}UjDP�(�}`j4A�4A�Y���2�lչ���e����);Y��$����?��xs�}p����\��1�>�F��Z�k��#��P|�"Q�bl^5؋���
��Өmu��7Z�nn.�S8���	s����ǽk_�q����1sFpe�^ٕ?D_�J?E�qq��}�7��<Bi��o��0���e���az��)|d��ɊU?�y��Y��G�xm�e�!n��ki�x����r\>�P��|�<�v�����C��<��oȂu5f�j�����Q#j�NU����)�)k')"e�-���ܐ�ܑ�nB �{+*��G'�WӃ\��F�1��?}�x�84)�jV��'��y�q����]s�\�����A�\Le!�(�N|�S�Ԙ�� �9��g���Tks�N�����i�PJWWS ��U�,��Ud4��槥Luu�+R���\�ksCsG�:�9�{ ex"(��vԱ�ӟ12��r���f��I�k0���ru�^н;`�k��"�5KJNV�7�˷޽�Zm.�i)}͔�wd'6 [�SN��׌�/��q����6R�<I7�ՠ��m��}M����cgbv(5���3��̍~���f_�L0���4y}�ݿn6/6�œ��I����on�_�>.�ʿ�ɧ����՛fB����<x/��oh�ٽS)J�����]�{��Z%�r{w��zSO���\�������hE>>V����ϒ��K����n�mG�y���pZ�Du~I/�/5YE�U#U�.�=ns��P�2��ϓ���;�,L(��8�,���ȸ���!%ӭ~� �f��R2��������P\�q֬*��������AiiԠ�������,
[~��˒���D�/��3(i8Ui;U4P�J���L�r�/Z����0p�u���>v~J��H5���UD�츽�Ufh�FH7؏�Z����@3I�x-z�!_cS�3�=h&��,�7��-'!m'�f����7b�}Ym8	i;	4��O��s�|&���*�<�?Ī�W      �   �   x�]�Yn�0D�9�)ʬ�]
�M�Bm��ķ��Xv�߀�d�a��Foԥ��@��7�&��ǧc��3N�{�JkZf�g�Z���h�?꨾��w��>���������4�1>)G��W�dB���Z��E��t�`ť��c+���YU ��yZp�-�'���:Ie�m��_�N;����8�`5W|}m~i�g��s�+>	_o ~���      �   3  x���Ɏ�8��� F-\D=� c3�0Z-���Iɴ�-��\C��X�_E��Ե�o���� ���j�\}  �����K4��#H�ꍞ<����޽]6Zl���RJF�4��q�A!U�ك��G�۫�j��M'�����o/�u��$"Jf/�i?�qU��� 1RT��GJ�I�t�q�@�T��P�a�uw�BZS�^�B&B�Q������H]��`�G��a2C/����:�����g����m��]�FR(�N*Aȸb�0�*�F��#f�y*�.��JH7���t݇a4G�e�h�k���׾���ō�r%�1�U�7-Ar��<D��c�Z���d{n�v��	
IJG}��(� ���6�!�.�d���	R�!|�Dy����G�.����N�@�͒���L�"m0��Gs���HY�B�#X��3�m��T�ᩑR�D���y:���s������:G|s��%-�xE>��k�=b!�R%���G�5߫��F� F�1�û�+���(�d�o^qM��/��v9��'3��0ٻj®�W�~O��y��g�_�\)���/[�W��tZLi�Y��WR��0o'Lv1%�b�=��smg�����~�����E)U	�å'g�\���lX�6�Z�<
c�bH@���/����Ԧb�\����֥{�v����(|s�O0`�q��ivج��I0��<��?-�!=�Ǭ�Qi�n�)�D�:����dY�>�Ҕ���m�\����E��y,X��S��%�g����t��d��"^5bޞ�������D�      �   
  x��َ�0 ���+�}��-�,oE�Lb�"�"�I��9G�]�u�FsP��s[tu���|Ǽ���"�
�\�������j���pX�K��r�~�(5N��I�����
�W:iB�?�$�p�v ���Q����dGi�!"�:�O�&��i��<3�;�v���sZ�{���#�s�7���c��*��E�u�n���vj��VL��:1���A�0X���RD�;Vq�&��Kiߠ@���?����$�;�]�      �   C   x�3�tJ��K-�70�50�5202�O��e�s�prbQ���������Uj����� �4N      �   �   x�m��� �������ԧNoA�t�2�H���7��������Ir�^]b;vn�#=!
��`9 �|RXP
��>H�	tU�Rc����"�.�i�g�c*es*?��0Ch��n�
��Z�5}��]�Tc���q�1^�o�v���"J��t[z�*(�oi�M�      �   D  x����n�0E��Wh_H���]�uZ$@�vt�8B+�Ԏ���KI���R�(�
<G3|`q�n���a�\~خ����j�|n�ʻ�a�T޶!�V�u���Ϫz�,�糫J��)+0p	�!�h[�Xy�T�%*��z*�N[Έ�l�4��xD�җh���T�;g	rlj�l��z�NE�v���q�@��6���Մ̩G���<�#~=�`��]�B�MF2]�ST�����O-�2� �ƢA���RT������z1/�r1��)�q�o��h�Fl�a�d)fR�\�sG����Ft��Q��`��\j��9�̀G̲X�,�da�R���R�v��nߞ���;rp���d�'���7vHތ��\��6 ���]R�4�+{DLߌ}'�(��@!_K��6Yfit1�,�~���v�ߞ����X����S7�/$q�'��rqP�}�[n7��e}:ŧ��b#�Y��VJ���@��\hJ��]W�o��7��f���Nx�}�y+���ڹp��
M���}yu��������F�y��X��ԩ�R�{�      �   �  x���A��0@��)��c#ɲl�,���C
�����5�I��t�ś�{��b��<���^y�n��>s�x������w��7��`���A�xF�_@�B�A�0�s7��~۞l;��m�������4ކ���(�+!��yЀˎ94\azUܺ����N��W�Պ7�&T��r��
R�2��ל��"0��Ж-_��������5p���K��^R6H����þ��<mw�<�U�cp���`0�+"3=��yj�a��*J�F���E1�d��é�D1	r3����c���#�%�ҲeEln9_r���nC".��, �>�05"�$&������N9$�˂9���`~��vwFx�IE^~/����b!��z���?�k�N	i�_�T�_]UU� 6�H      �   T  x����n�0��ɻ�%�rߎ�L��I�*
�@�BѤ>��
f�z����g,vJ��])�����6ia���(��t.��8<A\Rp#�1N�4�D��m�u�U&��].�^\���B���Ժ�Y�+�Q�GQo��!��wώC��P��Q�٭�9���^mѠ��j�='\�V-F��j �n��ST�c���ˆ���Eq�
�B
>���~�#��	�1�m][W/N�~���3|�㙁�jGO�9��SC�S,����B��ۼW��M������CxĆ�j�[�Y+�&�ȹ�r< I�>���L��<�����?���W�z�&�c�9�F�V�      �   �  x��V�r�6}��b_z��^D���8��F�&J�3��@$h" ��O���^��� �ȗd�q졈�b�ٳL�%Wp*YqϵԽYK]����^�p�q�]hka���p�)4,�CCC���аB}F���3��Y`�m�'��5X����''�`>(�[�[?¹��׻�C�K.�皋뺃�O���������҆�~��u�&1�sf8�J������Q�B�p�ltA�IO�xq�H��xe�d���'ǫ�t�$��q:����$����m��D����{چ��Ҵ�l��8/��h2�L�����$���Y�������BX�cV2kE+)���%�k�`y>�#J���@�*u��'a���x�̌�P0"�%�s�g;ÜPk�x�hYW���]p?"L&�,C�������EGI�γ��L�,�����o���-��:j��ʯ �P+�Mx�E�,�I���,�߇7w�M�|����<8�|����勷�GG�C�dF#�کn���+�\
)��9��Xp�c?�vԙ=�n����}����Bj�>#�k�f�T�������|���8M<�I�O���Z?êզ��¡�^0���r`�}�>�l�`���Vr�(�4��lk�M�8�t��!f�X8!���Pre1��f�T�Z�Y���Rr�A)l�����p�4����Qx���&���WwX�'��zTl�����{Ox��5z#J���â�E���g7�\gx�PE'6�'<G��G��]��h[T!q����6Z�Bz�����)\jص"����VpzE\Fؖ��m�ѱvrH�E�/�Y��l��ю_�/�Y�N�����4�C��p��=¥
Q-p�y�D�^;�cZ�"腰B�u3.���(w�5�I�M���NM��-\�,:�F>Q�(}��kv��x������C	~O%Y��-��ghV�N���
�T�}�?>��C�8v�A&���Gp�u�KA��s�I�``�m e�jR��S����Ѳf�5�8��@��\��PJ7�ŭ�b{�`F�0t+�Πu�V�^Q�{8���c�N�$II���*s����������X� ��V�L�>�sތ�y#[����15�X��������ܭpR����0ӡG27w 1g݂brg1%�ڰժ�P]���y�9���f��8��y�e����E<��q���W�,x��{8[&����S"a(�u_>0?|����u�|!�E�����r�>[��"���!Օ?H�&���,�p�
�
��m�fݢ,��f�L�m܅���>|�y؏V[�X����Dg>/̵V�p/%%�|m��@@T)���ʺ]���������<r'�kQut�;?�\V��yTI��{�x��c���I4ë:��7WQ1��&��7�Ctrr�/b/?g      �   �  x���K�$1D��S�~���2�?��Y�R��5�ڽP$|~�}�|O���ȇ��}�e�pG&-=�tyP�R芬�Ǔ.nR�F'gA�=t�����)�E��ë�(4�u�Pm��J�v\��*����-��ǃ�f�20
��cOd��zi�*���,�@=�((_�lL��B���((�R�!2��yPU�I��7�,C�H�zFR�m�b�W׃���f�AlX�4��1����]�f��ޑD��-�S��ޑ<�ɘ@{5e�X�$S�LNO�.�������Fx�P'��R(��v�F�u{��)�_A��ą,��@��O���q��y�Ƚ�A�x(�뚑�����c�y�Kzy����OR8�Iv9��.���"�f�=�X8��r5��U��e�i�i�M�)�uGW%�R�4������2#Qc      �      x������ � �      �   �   x�]��
�@���-܅Ù�x4!Ȣm��.�j�����s��/a|���"t�D���T����v�HIt����/��=���{�]6oNq���x��N���&;���:5j�*�2jg��^9�m�!�r������d�?�G����.�q����0g      �      x������ � �      �      x������ � �      �   |   x�-���0D��W��p���0�ЉJ0�T(�@ C����������dq=)g���pW+Q%@Zmv��h�
f�%KѬC�8�8WtCN�]�A?Mb�~�D�1��.��_?o-f      �   x   x�}ν
�0��9�)�K/�~$�Y}ݤCA��� T(��Ï#�8/SP��<ªJUe���%�~���UfXq�mcU��Fk��1�O���Q�bUJ�� �oUchJ����LD/@l,�     