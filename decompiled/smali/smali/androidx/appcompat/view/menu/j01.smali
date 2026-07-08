.class public final Landroidx/appcompat/view/menu/j01;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/j01;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/j01;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j01;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/j01;->a:Landroidx/appcompat/view/menu/j01;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "ThreadLocalEventLoop"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/appcompat/view/menu/k01;->a(Landroidx/appcompat/view/menu/my0;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/j01;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/bp;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/j01;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/bp;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/ep;->a()Landroidx/appcompat/view/menu/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public final b()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/j01;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/bp;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/j01;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
