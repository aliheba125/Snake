.class public final Landroidx/appcompat/view/menu/je2;
.super Landroidx/appcompat/view/menu/se1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/se1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final k(Landroidx/appcompat/view/menu/b20;Ljava/lang/String;ILandroidx/appcompat/view/menu/b20;)Landroidx/appcompat/view/menu/b20;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/se1;->j()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ok1;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/ok1;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/se1;->h(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/b20$a;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/b20;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final u2(Landroidx/appcompat/view/menu/b20;Ljava/lang/String;ILandroidx/appcompat/view/menu/b20;)Landroidx/appcompat/view/menu/b20;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/se1;->j()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ok1;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/ok1;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/se1;->h(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/b20$a;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/b20;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
