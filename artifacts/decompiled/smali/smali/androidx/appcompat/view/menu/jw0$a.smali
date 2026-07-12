.class public Landroidx/appcompat/view/menu/jw0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/jw0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jw0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw0$a;->a:Landroidx/appcompat/view/menu/jw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/jw0$a;->a:Landroidx/appcompat/view/menu/jw0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/jw0;->a(Landroidx/appcompat/view/menu/jw0;)Landroidx/appcompat/view/menu/jw0$b;

    move-result-object v0

    const-string v1, "SpellCheckChannel"

    if-nez v0, :cond_0

    const-string p1, "No SpellCheckeMethodHandler registered, call not forwarded to spell check API."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "SpellCheck.initiateSpellCheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Landroidx/appcompat/view/menu/kd0$d;->a()V

    goto :goto_0

    :cond_1
    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw0$a;->a:Landroidx/appcompat/view/menu/jw0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/jw0;->a(Landroidx/appcompat/view/menu/jw0;)Landroidx/appcompat/view/menu/jw0$b;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Landroidx/appcompat/view/menu/jw0$b;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/kd0$d;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
