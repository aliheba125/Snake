.class public Landroidx/appcompat/view/menu/ug0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/el0;


# static fields
.field public static final c:Landroidx/appcompat/view/menu/nk;

.field public static final d:Landroidx/appcompat/view/menu/el0;


# instance fields
.field public a:Landroidx/appcompat/view/menu/nk;

.field public volatile b:Landroidx/appcompat/view/menu/el0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/sg0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/sg0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ug0;->c:Landroidx/appcompat/view/menu/nk;

    new-instance v0, Landroidx/appcompat/view/menu/tg0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/tg0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ug0;->d:Landroidx/appcompat/view/menu/el0;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/nk;Landroidx/appcompat/view/menu/el0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ug0;->a:Landroidx/appcompat/view/menu/nk;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ug0;->b:Landroidx/appcompat/view/menu/el0;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/ug0;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/el0;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/ug0;->d(Landroidx/appcompat/view/menu/el0;)V

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/ug0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/ug0;

    sget-object v1, Landroidx/appcompat/view/menu/ug0;->c:Landroidx/appcompat/view/menu/nk;

    sget-object v2, Landroidx/appcompat/view/menu/ug0;->d:Landroidx/appcompat/view/menu/el0;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/ug0;-><init>(Landroidx/appcompat/view/menu/nk;Landroidx/appcompat/view/menu/el0;)V

    return-object v0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/el0;)V
    .locals 0

    return-void
.end method

.method public static synthetic e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public f(Landroidx/appcompat/view/menu/el0;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug0;->b:Landroidx/appcompat/view/menu/el0;

    sget-object v1, Landroidx/appcompat/view/menu/ug0;->d:Landroidx/appcompat/view/menu/el0;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ug0;->a:Landroidx/appcompat/view/menu/nk;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/ug0;->a:Landroidx/appcompat/view/menu/nk;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ug0;->b:Landroidx/appcompat/view/menu/el0;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/nk;->a(Landroidx/appcompat/view/menu/el0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug0;->b:Landroidx/appcompat/view/menu/el0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
