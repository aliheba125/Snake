.class public final Landroidx/appcompat/view/menu/cr1;
.super Landroidx/appcompat/view/menu/me1;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Landroidx/appcompat/view/menu/z7;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/z7;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-direct {p0, p1, p2, p4}, Landroidx/appcompat/view/menu/me1;-><init>(Landroidx/appcompat/view/menu/z7;ILandroid/os/Bundle;)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/cr1;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final f(Landroidx/appcompat/view/menu/ef;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z7;->V(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z7;->V(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/z7$b;->j(Landroidx/appcompat/view/menu/ef;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/z7;->L(Landroidx/appcompat/view/menu/ef;)V

    return-void
.end method

.method public final g()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/cr1;->g:Landroid/os/IBinder;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/z7;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/z7;->E()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vs. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    iget-object v2, p0, Landroidx/appcompat/view/menu/cr1;->g:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/z7;->s(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v1}, Landroidx/appcompat/view/menu/z7;->g0(Landroidx/appcompat/view/menu/z7;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    const/4 v3, 0x3

    invoke-static {v2, v3, v4, v1}, Landroidx/appcompat/view/menu/z7;->g0(Landroidx/appcompat/view/menu/z7;IILandroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z7;->Z(Landroidx/appcompat/view/menu/z7;Landroidx/appcompat/view/menu/ef;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z7;->x()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/cr1;->h:Landroidx/appcompat/view/menu/z7;

    invoke-static {v1}, Landroidx/appcompat/view/menu/z7;->U(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroidx/appcompat/view/menu/z7;->U(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$a;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/z7$a;->k(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    :catch_0
    :cond_3
    return v0
.end method
