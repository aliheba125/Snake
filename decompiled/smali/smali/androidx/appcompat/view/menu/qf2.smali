.class public final Landroidx/appcompat/view/menu/qf2;
.super Landroidx/appcompat/view/menu/se1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/zf2;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/se1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/se1;->j()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/se1;->h(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final d()Landroidx/appcompat/view/menu/b20;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/se1;->j()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/se1;->h(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/b20$a;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/b20;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
