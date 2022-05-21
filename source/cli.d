
import std.stdio;

struct Prediction
{
    string label;
    float score;
}

void printUsage()
{
    stderr.writeln("usage: fasttext <command> <args>\n");
    stderr.writeln("The commands supported by fasttext are:\n");
    stderr.writeln("  supervised              train a supervised classifier");
    stderr.writeln("  quantize                quantize a model to reduce the memory useage");
    stderr.writeln("  test                    evaluate a supervised classifier");
    stderr.writeln("  test-label              print labels with precision and recall scores");
    stderr.writeln("  predict                 predict most likely labels");
    stderr.writeln("  predict-prob            predict most likely labels with probabilities");
    stderr.writeln("  skipgram                train a skipgram model");
    stderr.writeln("  cbow                    train a cbow model");
    stderr.writeln("  print-word-vectors      print word vectors given a trained model");
    stderr.writeln("  print-sentence-vectors  print sentence vectors given a trained model");
    stderr.writeln("  print-ngrams            print ngrams given a trained model and word");
    stderr.writeln("  nn                      query for nearest neighbors");
    stderr.writeln("  analogies               query for analogies");
    stderr.writeln("  dump                    dump arguments,dictionary,input/output,vectors\n");
}

void printQuantizeUsage()
{
    stderr.writeln("usage: fasttext quantize <args>");
}

void printTestUsage()
{
    stderr.writeln("usage: fasttext test <model> <test-data> [<k>] [<th>]\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <test-data>  test data filename (if -, read from stdin)");
    stderr.writeln("  <k>          (optional; 1 by default) predict top k labels");
    stderr.writeln("  <th>         (optional; 0.0 by default) probability threshold\n");
}

void printPredictUsage()
{
    stderr.writeln("usage: fasttext predict[-prob] <model> <test-data> [<k>] [<th>]\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <test-data>  test data filename (if -, read from stdin)");
    stderr.writeln("  <k>          (optional; 1 by default) predict top k labels");
    stderr.writeln("  <th>         (optional; 0.0 by default) probability threshold\n");
}

void printTestLabelUsage()
{
    stderr.writeln("usage: fasttext test-label <model> <test-data> [<k>] [<th>]\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <test-data>  test data filename");
    stderr.writeln("  <k>          (optional; 1 by default) predict top k labels");
    stderr.writeln("  <th>         (optional; 0.0 by default) probability threshold\n");
}

void printPrintWordVectorsUsage()
{
    stderr.writeln("usage: fasttext print-word-vectors <model>\n");
    stderr.writeln("  <model>      model filename\n");
}

void printPrintSentenceVectorsUsage()
{
    stderr.writeln("usage: fasttext print-sentence-vectors <model>\n");
    stderr.writeln("  <model>      model filename\n");
}

void printPrintNgramsUsage()
{
    stderr.writeln("usage: fasttext print-ngrams <model> <word>\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <word>       word to print\n");
}

void printNNUsage()
{
    stderr.writeln("usage: fasttext nn <model> <k>\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <k>          (optional; 10 by default) predict top k labels\n");
}

void printAnalogiesUsage()
{
    stderr.writeln("usage: fasttext analogies <model> <k>\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <k>          (optional; 10 by default) predict top k labels\n");
}

void printDumpUsage()
{
    stderr.writeln("usage: fasttext dump <model> <option>\n");
    stderr.writeln("  <model>      model filename");
    stderr.writeln("  <option>     option from args,dict,input,output\n");
}

void quantize(const string[] args)
{

}

void test(const string[] args)
{

}

void printPredictions(Prediction[] predictions, bool printProb, bool multiline)
{

}

void predict(const string[] args)
{

}

void printWordVectors(const string[] args)
{

}

void printSentenceVectors(const string[] args)
{

}

void printNgrams(const string[] args)
{

}

void nn(const string[] args)
{

}

void analogies(const string[] args)
{

}

void train(const string[] args)
{

}

void dump(const string[] args)
{

}

int main(string[] args)
{
    if(args.length < 2)
    {
        printUsage();
        return 1;
    }
    string command = args[1];
    switch(command)
    {
        case("skipbow"):
        case("cbow"):
        case("supervised"):
            train(args);
            break;
        case("test"):
        case("test-label"):
            test(args);
            break;
        case("quantize"):
            quantize(args);
            break;
        case("print-word-vectors"):
            printWordVectors(args);
            break;
        case("print-sentence-vectors"):
            printSentenceVectors(args);
            break;
        case("print-ngrams"):
            printNgrams(args);
            break;
        case("nn"):
            nn(args);
            break;
        case("analogies"):
            analogies(args);
            break;
        case("predict"):
        case("predict-prob"):
            predict(args);
            break;
        case("dump"):
            dump(args);
            break;
        default:
            printUsage();
            return 1;
    }
    return 0;
}