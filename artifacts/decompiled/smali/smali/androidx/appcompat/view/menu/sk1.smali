.class public final Landroidx/appcompat/view/menu/sk1;
.super Landroidx/appcompat/view/menu/rj1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/zj1;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->j(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/vj1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
