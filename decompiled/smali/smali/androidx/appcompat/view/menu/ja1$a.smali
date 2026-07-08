.class public Landroidx/appcompat/view/menu/ja1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ja1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ja1$a;->b:Landroidx/appcompat/view/menu/bz0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ja1$a;->a:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ja1$a;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1$a;->f()V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/ScheduledFuture;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ja1$a;->g(Ljava/util/concurrent/ScheduledFuture;Landroidx/appcompat/view/menu/zy0;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/concurrent/ScheduledFuture;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/ha1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ha1;-><init>(Landroidx/appcompat/view/menu/ja1$a;)V

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1$a;->e()Landroidx/appcompat/view/menu/zy0;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ia1;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/ia1;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/view/menu/zy0;->c(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1$a;->b:Landroidx/appcompat/view/menu/bz0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bz0;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Landroidx/appcompat/view/menu/zy0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1$a;->b:Landroidx/appcompat/view/menu/bz0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service took too long to process intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ja1$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finishing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1$a;->d()V

    return-void
.end method
