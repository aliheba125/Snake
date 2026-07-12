.class public final Landroidx/appcompat/view/menu/fc1;
.super Landroidx/appcompat/view/menu/zd1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Landroidx/appcompat/view/menu/xx;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xx;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/fc1;->b:Landroidx/appcompat/view/menu/xx;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/zd1;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/fc1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/fc1;->b:Landroidx/appcompat/view/menu/xx;

    iget-object v0, p0, Landroidx/appcompat/view/menu/fc1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/xx;->g(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fc1;->b:Landroidx/appcompat/view/menu/xx;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/xx;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fc1;->b:Landroidx/appcompat/view/menu/xx;

    iget-object v1, p0, Landroidx/appcompat/view/menu/fc1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/xx;->o(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
