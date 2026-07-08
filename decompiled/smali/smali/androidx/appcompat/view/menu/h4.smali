.class public Landroidx/appcompat/view/menu/h4;
.super Landroidx/appcompat/view/menu/fz0;
.source "SourceFile"


# static fields
.field public static volatile c:Landroidx/appcompat/view/menu/h4;

.field public static final d:Ljava/util/concurrent/Executor;

.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public a:Landroidx/appcompat/view/menu/fz0;

.field public final b:Landroidx/appcompat/view/menu/fz0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/f4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/f4;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/h4;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/appcompat/view/menu/g4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/g4;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/h4;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/fz0;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/kk;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/kk;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h4;->b:Landroidx/appcompat/view/menu/fz0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/h4;->a:Landroidx/appcompat/view/menu/fz0;

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/h4;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/h4;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()Landroidx/appcompat/view/menu/h4;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/h4;->c:Landroidx/appcompat/view/menu/h4;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/h4;->c:Landroidx/appcompat/view/menu/h4;

    return-object v0

    :cond_0
    const-class v0, Landroidx/appcompat/view/menu/h4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/h4;->c:Landroidx/appcompat/view/menu/h4;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/view/menu/h4;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/h4;-><init>()V

    sput-object v1, Landroidx/appcompat/view/menu/h4;->c:Landroidx/appcompat/view/menu/h4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroidx/appcompat/view/menu/h4;->c:Landroidx/appcompat/view/menu/h4;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic g(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/h4;->f()Landroidx/appcompat/view/menu/h4;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/h4;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/h4;->f()Landroidx/appcompat/view/menu/h4;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/h4;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h4;->a:Landroidx/appcompat/view/menu/fz0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/fz0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h4;->a:Landroidx/appcompat/view/menu/fz0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz0;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h4;->a:Landroidx/appcompat/view/menu/fz0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/fz0;->c(Ljava/lang/Runnable;)V

    return-void
.end method
