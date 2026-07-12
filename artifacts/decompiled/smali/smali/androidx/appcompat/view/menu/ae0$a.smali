.class public Landroidx/appcompat/view/menu/ae0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ae0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/ae0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ae0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ae0$a;->a:Landroidx/appcompat/view/menu/ae0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 5

    const-string v0, "error"

    iget-object v1, p0, Landroidx/appcompat/view/menu/ae0$a;->a:Landroidx/appcompat/view/menu/ae0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ae0;->a(Landroidx/appcompat/view/menu/ae0;)Landroidx/appcompat/view/menu/ae0$b;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MouseCursorChannel"

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4de8d908

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "activateSystemCursor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "kind"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/ae0$a;->a:Landroidx/appcompat/view/menu/ae0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ae0;->a(Landroidx/appcompat/view/menu/ae0;)Landroidx/appcompat/view/menu/ae0$b;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/ae0$b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when setting cursors: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
