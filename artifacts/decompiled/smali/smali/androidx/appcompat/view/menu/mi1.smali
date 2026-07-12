.class public final Landroidx/appcompat/view/menu/mi1;
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    invoke-static {p1}, Landroidx/appcompat/view/menu/ir0;->u(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-wide v8, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_4

    invoke-static {p1}, Landroidx/appcompat/view/menu/ir0;->n(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/ir0;->i(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->t(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->q(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->d(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/appcompat/view/menu/ei1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/ir0;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/view/menu/ei1;

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->d(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ir0;->h(Landroid/os/Parcel;I)V

    new-instance p1, Landroidx/appcompat/view/menu/oi1;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/oi1;

    return-object p1
.end method
