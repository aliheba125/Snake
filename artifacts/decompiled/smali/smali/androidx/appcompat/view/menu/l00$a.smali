.class public abstract Landroidx/appcompat/view/menu/l00$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/l00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l00$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroidx/appcompat/view/menu/l00;->g:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/l00;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/l00;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/appcompat/view/menu/l00;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/l00;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/l00$a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l00$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/l00;->g:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/y6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/l00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/l00;->j1(Landroidx/appcompat/view/menu/y6;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/y6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/l00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/l00;->P(Landroidx/appcompat/view/menu/y6;I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_3
    sget-object p1, Landroidx/appcompat/view/menu/y6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/l00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    move p4, v1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Landroidx/appcompat/view/menu/l00;->b1(Landroidx/appcompat/view/menu/y6;ZI)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_5
    sget-object p1, Landroidx/appcompat/view/menu/y6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/l00$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/l00;->w(Landroidx/appcompat/view/menu/y6;I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
