.class public abstract Landroidx/appcompat/view/menu/vs1;
.super Landroidx/appcompat/view/menu/xj1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/xs1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/xj1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final h(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->s(Landroidx/appcompat/view/menu/cb2;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->Q0(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/hg1;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/vj1;->g(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->F0(Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object p4, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->G0(Landroid/os/Bundle;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->S(Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4, v0}, Landroidx/appcompat/view/menu/xs1;->Z1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4, v0}, Landroidx/appcompat/view/menu/xs1;->o0(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->h(Landroid/os/Parcel;)Z

    move-result v1

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4, v0, v1}, Landroidx/appcompat/view/menu/xs1;->r0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->h(Landroid/os/Parcel;)Z

    move-result v0

    sget-object v1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4, v0, v1}, Landroidx/appcompat/view/menu/xs1;->m1(Ljava/lang/String;Ljava/lang/String;ZLandroidx/appcompat/view/menu/cb2;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object p1, Landroidx/appcompat/view/menu/if1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/if1;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->I(Landroidx/appcompat/view/menu/if1;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Landroidx/appcompat/view/menu/if1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/if1;

    sget-object p4, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->o(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->P1(Landroidx/appcompat/view/menu/cb2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/appcompat/view/menu/xs1;->V1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    sget-object p1, Landroidx/appcompat/view/menu/oi1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/oi1;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->E1(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_f
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->h(Landroid/os/Parcel;)Z

    move-result p4

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->T(Landroidx/appcompat/view/menu/cb2;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_10
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->C1(Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_11
    sget-object p1, Landroidx/appcompat/view/menu/oi1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/oi1;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4, v0}, Landroidx/appcompat/view/menu/xs1;->A(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_12
    sget-object p1, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xs1;->i2(Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_13
    sget-object p1, Landroidx/appcompat/view/menu/v92;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/v92;

    sget-object p4, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->L0(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_14
    sget-object p1, Landroidx/appcompat/view/menu/oi1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/oi1;

    sget-object p4, Landroidx/appcompat/view/menu/cb2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/view/menu/cb2;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Landroidx/appcompat/view/menu/xs1;->g0(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
