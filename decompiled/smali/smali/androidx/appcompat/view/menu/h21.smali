.class public final Landroidx/appcompat/view/menu/h21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/b21;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/d21;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/appcompat/view/menu/lo;

.field public final d:Landroidx/appcompat/view/menu/r11;

.field public final e:Landroidx/appcompat/view/menu/i21;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d21;Ljava/lang/String;Landroidx/appcompat/view/menu/lo;Landroidx/appcompat/view/menu/r11;Landroidx/appcompat/view/menu/i21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/h21;->a:Landroidx/appcompat/view/menu/d21;

    iput-object p2, p0, Landroidx/appcompat/view/menu/h21;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/h21;->c:Landroidx/appcompat/view/menu/lo;

    iput-object p4, p0, Landroidx/appcompat/view/menu/h21;->d:Landroidx/appcompat/view/menu/r11;

    iput-object p5, p0, Landroidx/appcompat/view/menu/h21;->e:Landroidx/appcompat/view/menu/i21;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/h21;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/wo;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/g21;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/g21;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/h21;->d(Landroidx/appcompat/view/menu/wo;Landroidx/appcompat/view/menu/n21;)V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/wo;Landroidx/appcompat/view/menu/n21;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/h21;->e:Landroidx/appcompat/view/menu/i21;

    invoke-static {}, Landroidx/appcompat/view/menu/ns0;->a()Landroidx/appcompat/view/menu/ns0$a;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/h21;->a:Landroidx/appcompat/view/menu/d21;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ns0$a;->e(Landroidx/appcompat/view/menu/d21;)Landroidx/appcompat/view/menu/ns0$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ns0$a;->c(Landroidx/appcompat/view/menu/wo;)Landroidx/appcompat/view/menu/ns0$a;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/h21;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/ns0$a;->f(Ljava/lang/String;)Landroidx/appcompat/view/menu/ns0$a;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/h21;->d:Landroidx/appcompat/view/menu/r11;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/ns0$a;->d(Landroidx/appcompat/view/menu/r11;)Landroidx/appcompat/view/menu/ns0$a;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/h21;->c:Landroidx/appcompat/view/menu/lo;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/ns0$a;->b(Landroidx/appcompat/view/menu/lo;)Landroidx/appcompat/view/menu/ns0$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0$a;->a()Landroidx/appcompat/view/menu/ns0;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/i21;->a(Landroidx/appcompat/view/menu/ns0;Landroidx/appcompat/view/menu/n21;)V

    return-void
.end method
