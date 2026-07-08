.class public final Landroidx/appcompat/view/menu/b52;
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
    .locals 10

    invoke-static {p1}, Landroidx/appcompat/view/menu/ir0;->u(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v7, v4

    move-object v9, v7

    move v5, v2

    move v6, v5

    move v8, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ir0;->n(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/ir0;->i(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->t(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->b(Landroid/os/Parcel;I)[I

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->p(Landroid/os/Parcel;I)I

    move-result v1

    move v8, v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->b(Landroid/os/Parcel;I)[I

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->j(Landroid/os/Parcel;I)Z

    move-result v1

    move v6, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ir0;->j(Landroid/os/Parcel;I)Z

    move-result v1

    move v5, v1

    goto :goto_0

    :pswitch_5
    sget-object v2, Landroidx/appcompat/view/menu/vp0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/ir0;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/vp0;

    move-object v4, v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ir0;->h(Landroid/os/Parcel;I)V

    new-instance p1, Landroidx/appcompat/view/menu/ff;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/view/menu/ff;-><init>(Landroidx/appcompat/view/menu/vp0;ZZ[II[I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/ff;

    return-object p1
.end method
