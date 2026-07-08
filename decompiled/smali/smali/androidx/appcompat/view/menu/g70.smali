.class public final Landroidx/appcompat/view/menu/g70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ko;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/g70$b;
    }
.end annotation


# static fields
.field public static final e:Landroidx/appcompat/view/menu/tf0;

.field public static final f:Landroidx/appcompat/view/menu/w41;

.field public static final g:Landroidx/appcompat/view/menu/w41;

.field public static final h:Landroidx/appcompat/view/menu/g70$b;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public c:Landroidx/appcompat/view/menu/tf0;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/d70;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/d70;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/g70;->e:Landroidx/appcompat/view/menu/tf0;

    new-instance v0, Landroidx/appcompat/view/menu/e70;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e70;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/g70;->f:Landroidx/appcompat/view/menu/w41;

    new-instance v0, Landroidx/appcompat/view/menu/f70;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/f70;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/g70;->g:Landroidx/appcompat/view/menu/w41;

    new-instance v0, Landroidx/appcompat/view/menu/g70$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/g70$b;-><init>(Landroidx/appcompat/view/menu/g70$a;)V

    sput-object v0, Landroidx/appcompat/view/menu/g70;->h:Landroidx/appcompat/view/menu/g70$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/g70;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/g70;->b:Ljava/util/Map;

    sget-object v0, Landroidx/appcompat/view/menu/g70;->e:Landroidx/appcompat/view/menu/tf0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/g70;->c:Landroidx/appcompat/view/menu/tf0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g70;->d:Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Landroidx/appcompat/view/menu/g70;->f:Landroidx/appcompat/view/menu/w41;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/g70;->p(Ljava/lang/Class;Landroidx/appcompat/view/menu/w41;)Landroidx/appcompat/view/menu/g70;

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Landroidx/appcompat/view/menu/g70;->g:Landroidx/appcompat/view/menu/w41;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/g70;->p(Ljava/lang/Class;Landroidx/appcompat/view/menu/w41;)Landroidx/appcompat/view/menu/g70;

    const-class v0, Ljava/util/Date;

    sget-object v1, Landroidx/appcompat/view/menu/g70;->h:Landroidx/appcompat/view/menu/g70$b;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/g70;->p(Ljava/lang/Class;Landroidx/appcompat/view/menu/w41;)Landroidx/appcompat/view/menu/g70;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Landroidx/appcompat/view/menu/uf0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g70;->l(Ljava/lang/Object;Landroidx/appcompat/view/menu/uf0;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Landroidx/appcompat/view/menu/x41;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g70;->m(Ljava/lang/String;Landroidx/appcompat/view/menu/x41;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Boolean;Landroidx/appcompat/view/menu/x41;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g70;->n(Ljava/lang/Boolean;Landroidx/appcompat/view/menu/x41;)V

    return-void
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/g70;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/g70;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/g70;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/g70;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/g70;)Landroidx/appcompat/view/menu/tf0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/g70;->c:Landroidx/appcompat/view/menu/tf0;

    return-object p0
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/g70;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/g70;->d:Z

    return p0
.end method

.method public static synthetic l(Ljava/lang/Object;Landroidx/appcompat/view/menu/uf0;)V
    .locals 2

    new-instance p1, Landroidx/appcompat/view/menu/no;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/no;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Ljava/lang/String;Landroidx/appcompat/view/menu/x41;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/x41;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/x41;

    return-void
.end method

.method public static synthetic n(Ljava/lang/Boolean;Landroidx/appcompat/view/menu/x41;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/x41;->d(Z)Landroidx/appcompat/view/menu/x41;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Landroidx/appcompat/view/menu/tf0;)Landroidx/appcompat/view/menu/ko;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/g70;->o(Ljava/lang/Class;Landroidx/appcompat/view/menu/tf0;)Landroidx/appcompat/view/menu/g70;

    move-result-object p1

    return-object p1
.end method

.method public i()Landroidx/appcompat/view/menu/xi;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/g70$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/g70$a;-><init>(Landroidx/appcompat/view/menu/g70;)V

    return-object v0
.end method

.method public j(Landroidx/appcompat/view/menu/bf;)Landroidx/appcompat/view/menu/g70;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/bf;->a(Landroidx/appcompat/view/menu/ko;)V

    return-object p0
.end method

.method public k(Z)Landroidx/appcompat/view/menu/g70;
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g70;->d:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Landroidx/appcompat/view/menu/tf0;)Landroidx/appcompat/view/menu/g70;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/g70;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/g70;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Ljava/lang/Class;Landroidx/appcompat/view/menu/w41;)Landroidx/appcompat/view/menu/g70;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/g70;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/g70;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
