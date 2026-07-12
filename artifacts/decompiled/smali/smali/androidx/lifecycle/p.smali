.class public abstract Landroidx/lifecycle/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/gi$b;

.field public static final b:Landroidx/appcompat/view/menu/gi$b;

.field public static final c:Landroidx/appcompat/view/menu/gi$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/p$b;

    invoke-direct {v0}, Landroidx/lifecycle/p$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/p;->a:Landroidx/appcompat/view/menu/gi$b;

    new-instance v0, Landroidx/lifecycle/p$c;

    invoke-direct {v0}, Landroidx/lifecycle/p$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/p;->b:Landroidx/appcompat/view/menu/gi$b;

    new-instance v0, Landroidx/lifecycle/p$a;

    invoke-direct {v0}, Landroidx/lifecycle/p$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/p;->c:Landroidx/appcompat/view/menu/gi$b;

    return-void
.end method

.method public static final a(Landroidx/appcompat/view/menu/rr0;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/a90;->h()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/f$b;->o:Landroidx/lifecycle/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/appcompat/view/menu/rr0;->l()Landroidx/appcompat/view/menu/pr0;

    move-result-object v0

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/pr0;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/pr0$c;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/mr0;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/rr0;->l()Landroidx/appcompat/view/menu/pr0;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/appcompat/view/menu/b61;

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/view/menu/mr0;-><init>(Landroidx/appcompat/view/menu/pr0;Landroidx/appcompat/view/menu/b61;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/rr0;->l()Landroidx/appcompat/view/menu/pr0;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/appcompat/view/menu/pr0;->h(Ljava/lang/String;Landroidx/appcompat/view/menu/pr0$c;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/a90;->h()Landroidx/lifecycle/f;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/o;

    invoke-direct {v1, v0}, Landroidx/lifecycle/o;-><init>(Landroidx/appcompat/view/menu/mr0;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/f;->a(Landroidx/appcompat/view/menu/z80;)V

    :cond_2
    return-void
.end method

.method public static final b(Landroidx/appcompat/view/menu/b61;)Landroidx/appcompat/view/menu/nr0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/r;

    new-instance v1, Landroidx/lifecycle/p$d;

    invoke-direct {v1}, Landroidx/lifecycle/p$d;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/r;-><init>(Landroidx/appcompat/view/menu/b61;Landroidx/lifecycle/r$b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    const-class v1, Landroidx/appcompat/view/menu/nr0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/r;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/appcompat/view/menu/y51;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/nr0;

    return-object p0
.end method
