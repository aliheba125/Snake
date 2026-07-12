.class public abstract Landroidx/appcompat/view/menu/j00$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/j00$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroidx/appcompat/view/menu/j00;->e:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/j00;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/j00;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/appcompat/view/menu/j00;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/j00$a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/j00$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/j00;->e:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/j00;->x(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/j00;->k0(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p0}, Landroidx/appcompat/view/menu/j00;->A0()Landroidx/appcompat/view/menu/p6;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Landroidx/appcompat/view/menu/j00$b;->c(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Landroidx/appcompat/view/menu/p6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/j00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/p6;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/j00;->t0(Landroidx/appcompat/view/menu/p6;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/j00;->B(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Landroidx/appcompat/view/menu/j00$b;->c(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroidx/appcompat/view/menu/p6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/j00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/p6;

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/j00;->C0(ILjava/lang/String;Landroidx/appcompat/view/menu/p6;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/j00;->p2(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Landroidx/appcompat/view/menu/j00$b;->b(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/j00;->h2(ILjava/lang/String;)Landroidx/appcompat/view/menu/n6;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Landroidx/appcompat/view/menu/j00$b;->c(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p0}, Landroidx/appcompat/view/menu/j00;->q0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Landroidx/appcompat/view/menu/j00$b;->b(Landroid/os/Parcel;Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/j00;->J(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    sget-object p1, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/j00;->L(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/j00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/n6;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/j00;->l0(Landroidx/appcompat/view/menu/n6;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/j00;->J0(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Landroidx/appcompat/view/menu/j00$b;->b(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/j00;->s2(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/j00;->G1(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroidx/appcompat/view/menu/n6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/j00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/n6;

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/j00;->e1(ILjava/lang/String;Landroidx/appcompat/view/menu/n6;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/j00;->P0(ILjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/j00;->K0(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
