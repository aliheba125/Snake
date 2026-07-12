.class public final Landroidx/appcompat/view/menu/i6;
.super Landroidx/appcompat/view/menu/ns0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/i6$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/d21;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/appcompat/view/menu/wo;

.field public final d:Landroidx/appcompat/view/menu/r11;

.field public final e:Landroidx/appcompat/view/menu/lo;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d21;Ljava/lang/String;Landroidx/appcompat/view/menu/wo;Landroidx/appcompat/view/menu/r11;Landroidx/appcompat/view/menu/lo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ns0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i6;->a:Landroidx/appcompat/view/menu/d21;

    iput-object p2, p0, Landroidx/appcompat/view/menu/i6;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/i6;->c:Landroidx/appcompat/view/menu/wo;

    iput-object p4, p0, Landroidx/appcompat/view/menu/i6;->d:Landroidx/appcompat/view/menu/r11;

    iput-object p5, p0, Landroidx/appcompat/view/menu/i6;->e:Landroidx/appcompat/view/menu/lo;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/d21;Ljava/lang/String;Landroidx/appcompat/view/menu/wo;Landroidx/appcompat/view/menu/r11;Landroidx/appcompat/view/menu/lo;Landroidx/appcompat/view/menu/i6$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/view/menu/i6;-><init>(Landroidx/appcompat/view/menu/d21;Ljava/lang/String;Landroidx/appcompat/view/menu/wo;Landroidx/appcompat/view/menu/r11;Landroidx/appcompat/view/menu/lo;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/lo;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6;->e:Landroidx/appcompat/view/menu/lo;

    return-object v0
.end method

.method public c()Landroidx/appcompat/view/menu/wo;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6;->c:Landroidx/appcompat/view/menu/wo;

    return-object v0
.end method

.method public e()Landroidx/appcompat/view/menu/r11;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6;->d:Landroidx/appcompat/view/menu/r11;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/ns0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/appcompat/view/menu/ns0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->a:Landroidx/appcompat/view/menu/d21;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->f()Landroidx/appcompat/view/menu/d21;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->c:Landroidx/appcompat/view/menu/wo;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->c()Landroidx/appcompat/view/menu/wo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->d:Landroidx/appcompat/view/menu/r11;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->e()Landroidx/appcompat/view/menu/r11;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->e:Landroidx/appcompat/view/menu/lo;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->b()Landroidx/appcompat/view/menu/lo;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/lo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Landroidx/appcompat/view/menu/d21;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6;->a:Landroidx/appcompat/view/menu/d21;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6;->a:Landroidx/appcompat/view/menu/d21;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/i6;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/i6;->c:Landroidx/appcompat/view/menu/wo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/i6;->d:Landroidx/appcompat/view/menu/r11;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->e:Landroidx/appcompat/view/menu/lo;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lo;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->a:Landroidx/appcompat/view/menu/d21;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->c:Landroidx/appcompat/view/menu/wo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->d:Landroidx/appcompat/view/menu/r11;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i6;->e:Landroidx/appcompat/view/menu/lo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
