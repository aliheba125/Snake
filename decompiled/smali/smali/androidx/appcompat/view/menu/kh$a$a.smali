.class public final Landroidx/appcompat/view/menu/kh$a$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/kh$a;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/kh$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/kh$a$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/kh$a$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/kh$a$a;->n:Landroidx/appcompat/view/menu/kh$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroidx/appcompat/view/menu/kh$b;->getKey()Landroidx/appcompat/view/menu/kh$c;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/kh;->j(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/ah;->b:Landroidx/appcompat/view/menu/ah$b;

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ah;

    if-nez v2, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/dd;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/dd;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/kh;->j(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, Landroidx/appcompat/view/menu/dd;

    invoke-direct {p1, p2, v2}, Landroidx/appcompat/view/menu/dd;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/appcompat/view/menu/dd;

    new-instance v1, Landroidx/appcompat/view/menu/dd;

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/view/menu/dd;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)V

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/dd;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/kh;

    check-cast p2, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kh$a$a;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method
