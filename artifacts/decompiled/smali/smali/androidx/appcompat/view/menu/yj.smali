.class public Landroidx/appcompat/view/menu/yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tr0;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/pa1;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/appcompat/view/menu/r7;

.field public final d:Landroidx/appcompat/view/menu/gp;

.field public final e:Landroidx/appcompat/view/menu/py0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/k21;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/yj;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/r7;Landroidx/appcompat/view/menu/pa1;Landroidx/appcompat/view/menu/gp;Landroidx/appcompat/view/menu/py0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/yj;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/appcompat/view/menu/yj;->c:Landroidx/appcompat/view/menu/r7;

    iput-object p3, p0, Landroidx/appcompat/view/menu/yj;->a:Landroidx/appcompat/view/menu/pa1;

    iput-object p4, p0, Landroidx/appcompat/view/menu/yj;->d:Landroidx/appcompat/view/menu/gp;

    iput-object p5, p0, Landroidx/appcompat/view/menu/yj;->e:Landroidx/appcompat/view/menu/py0;

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/yj;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/n21;Landroidx/appcompat/view/menu/ap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/yj;->e(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/n21;Landroidx/appcompat/view/menu/ap;)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/yj;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/yj;->d(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;Landroidx/appcompat/view/menu/n21;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/yj;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/vj;

    invoke-direct {v1, p0, p1, p3, p2}, Landroidx/appcompat/view/menu/vj;-><init>(Landroidx/appcompat/view/menu/yj;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/n21;Landroidx/appcompat/view/menu/ap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yj;->d:Landroidx/appcompat/view/menu/gp;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/gp;->k(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)Landroidx/appcompat/view/menu/yh0;

    iget-object p2, p0, Landroidx/appcompat/view/menu/yj;->a:Landroidx/appcompat/view/menu/pa1;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/pa1;->a(Landroidx/appcompat/view/menu/d21;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic e(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/n21;Landroidx/appcompat/view/menu/ap;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/yj;->c:Landroidx/appcompat/view/menu/r7;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/r7;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/c21;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p3, "Transport backend \'%s\' is not registered"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Landroidx/appcompat/view/menu/yj;->f:Ljava/util/logging/Logger;

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Landroidx/appcompat/view/menu/n21;->a(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Landroidx/appcompat/view/menu/c21;->a(Landroidx/appcompat/view/menu/ap;)Landroidx/appcompat/view/menu/ap;

    move-result-object p3

    iget-object v0, p0, Landroidx/appcompat/view/menu/yj;->e:Landroidx/appcompat/view/menu/py0;

    new-instance v1, Landroidx/appcompat/view/menu/wj;

    invoke-direct {v1, p0, p1, p3}, Landroidx/appcompat/view/menu/wj;-><init>(Landroidx/appcompat/view/menu/yj;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;)V

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/py0;->d(Landroidx/appcompat/view/menu/py0$a;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/n21;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p3, Landroidx/appcompat/view/menu/yj;->f:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error scheduling event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/n21;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
