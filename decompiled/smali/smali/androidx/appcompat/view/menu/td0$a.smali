.class public Landroidx/appcompat/view/menu/td0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/td0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/view/menu/td0;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/td0;->e(II)Landroidx/appcompat/view/menu/td0;

    move-result-object p1

    return-object p1
.end method

.method public b(I)[Landroidx/appcompat/view/menu/td0;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/td0;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/td0$a;->a(Landroid/os/Parcel;)Landroidx/appcompat/view/menu/td0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/td0$a;->b(I)[Landroidx/appcompat/view/menu/td0;

    move-result-object p1

    return-object p1
.end method
