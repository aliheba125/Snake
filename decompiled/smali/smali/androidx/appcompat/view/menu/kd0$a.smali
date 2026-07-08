.class public final Landroidx/appcompat/view/menu/kd0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/kd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kd0$c;

.field public final synthetic b:Landroidx/appcompat/view/menu/kd0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kd0;Landroidx/appcompat/view/menu/kd0$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kd0$a;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/kd0$a;->a:Landroidx/appcompat/view/menu/kd0$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$a;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kd0;->a(Landroidx/appcompat/view/menu/kd0;)Landroidx/appcompat/view/menu/ld0;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/ld0;->d(Ljava/nio/ByteBuffer;)Landroidx/appcompat/view/menu/id0;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$a;->a:Landroidx/appcompat/view/menu/kd0$c;

    new-instance v1, Landroidx/appcompat/view/menu/kd0$a$a;

    invoke-direct {v1, p0, p2}, Landroidx/appcompat/view/menu/kd0$a$a;-><init>(Landroidx/appcompat/view/menu/kd0$a;Landroidx/appcompat/view/menu/i8$b;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/kd0$c;->C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0$a;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/kd0;->b(Landroidx/appcompat/view/menu/kd0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call"

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0$a;->b:Landroidx/appcompat/view/menu/kd0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kd0;->a(Landroidx/appcompat/view/menu/kd0;)Landroidx/appcompat/view/menu/ld0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ea0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error"

    invoke-interface {v0, v3, v1, v2, p1}, Landroidx/appcompat/view/menu/ld0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
