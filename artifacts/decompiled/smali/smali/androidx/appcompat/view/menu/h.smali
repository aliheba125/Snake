.class public abstract Landroidx/appcompat/view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kh$b;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/kh$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh$c;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->m:Landroidx/appcompat/view/menu/kh$c;

    return-void
.end method


# virtual methods
.method public d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/kh$b$a;->b(Landroidx/appcompat/view/menu/kh$b;Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Landroidx/appcompat/view/menu/kh$c;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->m:Landroidx/appcompat/view/menu/kh$c;

    return-object v0
.end method

.method public j(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/kh$b$a;->c(Landroidx/appcompat/view/menu/kh$b;Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/kh$b$a;->d(Landroidx/appcompat/view/menu/kh$b;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/kh$b$a;->a(Landroidx/appcompat/view/menu/kh$b;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
