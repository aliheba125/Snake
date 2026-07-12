.class public Landroidx/appcompat/view/menu/ga1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ga1$a;
    }
.end annotation


# instance fields
.field public final l:Landroidx/appcompat/view/menu/ga1$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ga1$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ga1;->l:Landroidx/appcompat/view/menu/ga1$a;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ja1$a;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ga1;->b(Landroidx/appcompat/view/menu/ja1$a;Landroidx/appcompat/view/menu/zy0;)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/ja1$a;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1$a;->d()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/ja1$a;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/ga1;->l:Landroidx/appcompat/view/menu/ga1$a;

    iget-object v1, p1, Landroidx/appcompat/view/menu/ja1$a;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/ga1$a;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    new-instance v2, Landroidx/appcompat/view/menu/fa1;

    invoke-direct {v2, p1}, Landroidx/appcompat/view/menu/fa1;-><init>(Landroidx/appcompat/view/menu/ja1$a;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/zy0;->c(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
