.class public abstract Landroidx/appcompat/view/menu/yo1;
.super Landroidx/appcompat/view/menu/ai1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dr1;


# direct methods
.method public static h(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/dr1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/dr1;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/dr1;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/wm1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/wm1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
