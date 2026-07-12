.class public Landroidx/appcompat/view/menu/c40;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/c40$a;,
        Landroidx/appcompat/view/menu/c40$b;
    }
.end annotation


# instance fields
.field public final q:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j8;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/c40;->q:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/c40;->q:Landroid/os/IInterface;

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/c40$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c40$a;-><init>()V

    const-string v1, "addToDisplay"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c40$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c40$b;-><init>()V

    const-string v1, "addToDisplayAsUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
