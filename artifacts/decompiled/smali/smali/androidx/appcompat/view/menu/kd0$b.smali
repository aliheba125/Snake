.class public final Landroidx/appcompat/view/menu/kd0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i8$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/kd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kd0$d;

.field public final synthetic b:Landroidx/appcompat/view/menu/kd0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kd0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kd0$b;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/kd0$b;->a:Landroidx/appcompat/view/menu/kd0$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/kd0$b;->a:Landroidx/appcompat/view/menu/kd0$d;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/kd0$d;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$b;->a:Landroidx/appcompat/view/menu/kd0$d;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0$b;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/kd0;->a(Landroidx/appcompat/view/menu/kd0;)Landroidx/appcompat/view/menu/ld0;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/ld0;->e(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/appcompat/view/menu/lt; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$b;->a:Landroidx/appcompat/view/menu/kd0$d;

    iget-object v1, p1, Landroidx/appcompat/view/menu/lt;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Landroidx/appcompat/view/menu/lt;->n:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0$b;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/kd0;->b(Landroidx/appcompat/view/menu/kd0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call result"

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
