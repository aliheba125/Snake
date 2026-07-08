.class public abstract Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kh$c;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/fw;

.field public final n:Landroidx/appcompat/view/menu/kh$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh$c;Landroidx/appcompat/view/menu/fw;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/i;->m:Landroidx/appcompat/view/menu/fw;

    instance-of p2, p1, Landroidx/appcompat/view/menu/i;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/i;

    iget-object p1, p1, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/kh$c;

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/kh$c;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/kh$c;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->n:Landroidx/appcompat/view/menu/kh$c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh$b;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->m:Landroidx/appcompat/view/menu/fw;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/kh$b;

    return-object p1
.end method
