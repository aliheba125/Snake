.class public abstract Landroidx/appcompat/view/menu/nm1;
.super Landroidx/appcompat/view/menu/xj1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/hm1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/xj1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final h(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Landroidx/appcompat/view/menu/vj1;->f(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/hm1;->f(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
