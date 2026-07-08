.class public final Landroidx/appcompat/view/menu/ix$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final m:Ljava/util/concurrent/Future;

.field public final n:Landroidx/appcompat/view/menu/hx;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Landroidx/appcompat/view/menu/hx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ix$a;->m:Ljava/util/concurrent/Future;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ix$a;->n:Landroidx/appcompat/view/menu/hx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ix$a;->m:Ljava/util/concurrent/Future;

    :try_start_0
    invoke-static {v0}, Landroidx/appcompat/view/menu/ix;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ix$a;->n:Landroidx/appcompat/view/menu/hx;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/hx;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ix$a;->n:Landroidx/appcompat/view/menu/hx;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/hx;->b(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ix$a;->n:Landroidx/appcompat/view/menu/hx;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/hx;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/ud0;->a(Ljava/lang/Object;)Landroidx/appcompat/view/menu/ud0$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ix$a;->n:Landroidx/appcompat/view/menu/hx;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud0$b;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/ud0$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud0$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
