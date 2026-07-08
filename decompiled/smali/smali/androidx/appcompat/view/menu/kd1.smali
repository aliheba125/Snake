.class public final Landroidx/appcompat/view/menu/kd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, Landroidx/appcompat/view/menu/ir0;->u(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2

    invoke-static {p1}, Landroidx/appcompat/view/menu/ir0;->n(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/ir0;->i(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-static {p1, v3}, Landroidx/appcompat/view/menu/ir0;->t(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/appcompat/view/menu/ae1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v2}, Landroidx/appcompat/view/menu/ir0;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ae1;

    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Landroidx/appcompat/view/menu/ir0;->p(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ir0;->h(Landroid/os/Parcel;I)V

    new-instance p1, Landroidx/appcompat/view/menu/id1;

    invoke-direct {p1, v1, v2}, Landroidx/appcompat/view/menu/id1;-><init>(ILandroidx/appcompat/view/menu/ae1;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/id1;

    return-object p1
.end method
