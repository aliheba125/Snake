.class public final Landroidx/appcompat/view/menu/kc0$a;
.super Landroidx/appcompat/view/menu/kc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/kc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Landroidx/appcompat/view/menu/jc0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jc0;)V
    .locals 1

    const-string v0, "mMeasurementManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/kc0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/kc0$a;->b:Landroidx/appcompat/view/menu/jc0;

    return-void
.end method

.method public static final synthetic d(Landroidx/appcompat/view/menu/kc0$a;)Landroidx/appcompat/view/menu/jc0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/kc0$a;->b:Landroidx/appcompat/view/menu/jc0;

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/j90;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/appcompat/view/menu/j90;"
        }
    .end annotation

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/uh;->a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/kc0$a$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/appcompat/view/menu/kc0$a$b;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroidx/appcompat/view/menu/xg;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/b9;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Landroidx/appcompat/view/menu/jh;->c(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/appcompat/view/menu/j90;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/net/Uri;)Landroidx/appcompat/view/menu/j90;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroidx/appcompat/view/menu/j90;"
        }
    .end annotation

    const-string v0, "trigger"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/uh;->a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/kc0$a$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/appcompat/view/menu/kc0$a$d;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroid/net/Uri;Landroidx/appcompat/view/menu/xg;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/b9;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Landroidx/appcompat/view/menu/jh;->c(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/appcompat/view/menu/j90;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/appcompat/view/menu/hl;)Landroidx/appcompat/view/menu/j90;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/hl;",
            ")",
            "Landroidx/appcompat/view/menu/j90;"
        }
    .end annotation

    const-string v0, "deletionRequest"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/uh;->a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/kc0$a$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/appcompat/view/menu/kc0$a$a;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroidx/appcompat/view/menu/hl;Landroidx/appcompat/view/menu/xg;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/b9;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Landroidx/appcompat/view/menu/jh;->c(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/appcompat/view/menu/j90;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/net/Uri;Landroid/view/InputEvent;)Landroidx/appcompat/view/menu/j90;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "Landroidx/appcompat/view/menu/j90;"
        }
    .end annotation

    const-string v0, "attributionSource"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/uh;->a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/kc0$a$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Landroidx/appcompat/view/menu/kc0$a$c;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroid/net/Uri;Landroid/view/InputEvent;Landroidx/appcompat/view/menu/xg;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/b9;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, v0, p2, v0}, Landroidx/appcompat/view/menu/jh;->c(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/appcompat/view/menu/j90;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroidx/appcompat/view/menu/t71;)Landroidx/appcompat/view/menu/j90;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/t71;",
            ")",
            "Landroidx/appcompat/view/menu/j90;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/uh;->a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/kc0$a$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/appcompat/view/menu/kc0$a$e;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroidx/appcompat/view/menu/t71;Landroidx/appcompat/view/menu/xg;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/b9;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Landroidx/appcompat/view/menu/jh;->c(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/appcompat/view/menu/j90;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroidx/appcompat/view/menu/u71;)Landroidx/appcompat/view/menu/j90;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/u71;",
            ")",
            "Landroidx/appcompat/view/menu/j90;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/uh;->a(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/th;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/kc0$a$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/appcompat/view/menu/kc0$a$f;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroidx/appcompat/view/menu/u71;Landroidx/appcompat/view/menu/xg;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/b9;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Landroidx/appcompat/view/menu/jh;->c(Landroidx/appcompat/view/menu/ok;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/appcompat/view/menu/j90;

    move-result-object p1

    return-object p1
.end method
