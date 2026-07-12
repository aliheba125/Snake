.class public final Landroidx/appcompat/view/menu/um1;
.super Landroidx/appcompat/view/menu/xe1;
.source "SourceFile"


# instance fields
.field public l:Landroidx/appcompat/view/menu/z7;

.field public final m:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/z7;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/xe1;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/um1;->l:Landroidx/appcompat/view/menu/z7;

    iput p2, p0, Landroidx/appcompat/view/menu/um1;->m:I

    return-void
.end method


# virtual methods
.method public final j0(ILandroid/os/IBinder;Landroidx/appcompat/view/menu/x02;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/um1;->l:Landroidx/appcompat/view/menu/z7;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/z7;->c0(Landroidx/appcompat/view/menu/z7;Landroidx/appcompat/view/menu/x02;)V

    iget-object p3, p3, Landroidx/appcompat/view/menu/x02;->m:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/um1;->t2(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final o1(ILandroid/os/Bundle;)V
    .locals 0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public final t2(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/um1;->l:Landroidx/appcompat/view/menu/z7;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/um1;->l:Landroidx/appcompat/view/menu/z7;

    iget v1, p0, Landroidx/appcompat/view/menu/um1;->m:I

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/appcompat/view/menu/z7;->N(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/um1;->l:Landroidx/appcompat/view/menu/z7;

    return-void
.end method
