.class public final Landroidx/appcompat/view/menu/w5$b;
.super Landroidx/appcompat/view/menu/l50$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/w5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroidx/appcompat/view/menu/a11;

.field public e:Landroidx/appcompat/view/menu/l50$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l50$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/l50;
    .locals 8

    new-instance v7, Landroidx/appcompat/view/menu/w5;

    iget-object v1, p0, Landroidx/appcompat/view/menu/w5$b;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/w5$b;->b:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/w5$b;->c:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/w5$b;->d:Landroidx/appcompat/view/menu/a11;

    iget-object v5, p0, Landroidx/appcompat/view/menu/w5$b;->e:Landroidx/appcompat/view/menu/l50$b;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/w5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/a11;Landroidx/appcompat/view/menu/l50$b;Landroidx/appcompat/view/menu/w5$a;)V

    return-object v7
.end method

.method public b(Landroidx/appcompat/view/menu/a11;)Landroidx/appcompat/view/menu/l50$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/w5$b;->d:Landroidx/appcompat/view/menu/a11;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Landroidx/appcompat/view/menu/l50$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/w5$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/appcompat/view/menu/l50$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/w5$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Landroidx/appcompat/view/menu/l50$b;)Landroidx/appcompat/view/menu/l50$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/w5$b;->e:Landroidx/appcompat/view/menu/l50$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Landroidx/appcompat/view/menu/l50$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/w5$b;->a:Ljava/lang/String;

    return-object p0
.end method
