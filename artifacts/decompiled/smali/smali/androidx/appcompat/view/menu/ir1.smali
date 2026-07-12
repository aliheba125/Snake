.class public final Landroidx/appcompat/view/menu/ir1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/mg0;
.implements Landroidx/appcompat/view/menu/ig0;
.implements Landroidx/appcompat/view/menu/fg0;
.implements Landroidx/appcompat/view/menu/rd2;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroidx/appcompat/view/menu/yg;

.field public final c:Landroidx/appcompat/view/menu/nf2;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;Landroidx/appcompat/view/menu/nf2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ir1;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ir1;->b:Landroidx/appcompat/view/menu/yg;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ir1;->c:Landroidx/appcompat/view/menu/nf2;

    return-void
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/ir1;)Landroidx/appcompat/view/menu/yg;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ir1;->b:Landroidx/appcompat/view/menu/yg;

    return-object p0
.end method

.method public static bridge synthetic f(Landroidx/appcompat/view/menu/ir1;)Landroidx/appcompat/view/menu/nf2;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ir1;->c:Landroidx/appcompat/view/menu/nf2;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ir1;->c:Landroidx/appcompat/view/menu/nf2;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nf2;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/zy0;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ir1;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/dp1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/dp1;-><init>(Landroidx/appcompat/view/menu/ir1;Landroidx/appcompat/view/menu/zy0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ir1;->c:Landroidx/appcompat/view/menu/nf2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nf2;->q()Z

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ir1;->c:Landroidx/appcompat/view/menu/nf2;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nf2;->o(Ljava/lang/Exception;)V

    return-void
.end method
