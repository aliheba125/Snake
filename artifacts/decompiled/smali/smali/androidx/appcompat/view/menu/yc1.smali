.class public final Landroidx/appcompat/view/menu/yc1;
.super Landroidx/appcompat/view/menu/bb1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/bb1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final u2(Landroidx/appcompat/view/menu/id1;Landroidx/appcompat/view/menu/vc1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bb1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/dc1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/dc1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/bb1;->j(ILandroid/os/Parcel;)V

    return-void
.end method
