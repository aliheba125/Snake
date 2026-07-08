.class public final Landroidx/appcompat/view/menu/v42;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/appcompat/view/menu/v42;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/o52;

.field public final b:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/v42;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/v42;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/v42;->c:Landroidx/appcompat/view/menu/v42;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/v42;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Landroidx/appcompat/view/menu/s22;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/s22;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/v42;->a:Landroidx/appcompat/view/menu/o52;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/v42;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/v42;->c:Landroidx/appcompat/view/menu/v42;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/j52;
    .locals 2

    const-string v0, "messageType"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/v02;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/v42;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/j52;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/v42;->a:Landroidx/appcompat/view/menu/o52;

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/o52;->a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/j52;

    move-result-object v1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/v02;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/v02;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/v42;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/j52;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v42;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/j52;

    move-result-object p1

    return-object p1
.end method
